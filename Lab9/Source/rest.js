var request = require('request');
request('https://stream.watsonplatform.net/text-to-speech/api/v1/synthesize?accept=audio/wav&text="+speech+"&voice=en-US_LisaVoice', function (error, response, body) {
    //Check for error
    if(error){
        return console.log('Error:', error);
    }

    //Check for right status code
    if(response.statusCode !== 200){
        return console.log('Invalid Status Code Returned:', response.statusCode);
    }
//	console.log(body);
    //All is good. Print the body
    body = JSON.parse(body);
	var ven = body.response.venues;
	var i;
	for(i=0;i<ven.length;i++)
	{
		console.log(ven[i].name);
	}
	
});