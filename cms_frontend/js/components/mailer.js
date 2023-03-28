async function SendMail(targetForm) {
    // mail stuff goes here
    let formData = new FormData(targetForm), // this is the form element in index.html (gets passed in via reference from main.js)
        formFieldErrors = false;

        // try to run the mail API and pass the form data through via POST
    let result = await fetch(`./includes/${targetForm.getAttribute("action")}`, {
        method: targetForm.method,
        body: formData,
    }).then(response => {
        // if we're missing some form fields or anything else broke, you'll get a status message that ISN'T 200 (ok)
        if (response.status !== 200) {
            formFieldErrors = true;
        }

        return response;
    })

    let mailStatus = await result.json(); // wait for the promise to resolve

    // if there are any errors with the from submission, throw a new error and pass the payload along (these are the references to the fields that are broken)

    // this will get handled by the error handler in main.js 
    // nothing should execute past the throw
    if (formFieldErrors) {
        throw new Error(JSON.stringify(mailStatus));
    }    
    
    // send back a success message - this is handled in main.js by the success thenable
    return mailStatus;
}

export { SendMail };