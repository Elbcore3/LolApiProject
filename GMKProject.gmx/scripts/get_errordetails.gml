var status,message;
status = argument0;
message = "Unknown or Unlisted Error Code : "+string(status);
if (status == 400) {
message = "Error 400: Bad Request! #A provided parameter is in the wrong format or a required parameter was not provided.";
} 
if (status == 401) {
message = "Error 401: Unauthorized! #No API key was provided with the API request or an invalid API key was provided with the API request or the API request was for an incorrect or unsupported path";
} 
if (status == 404) {
message = "Error 404: Not Found! #The ID or name provided does not match any existing resource (e.g., there is no summoner matching the specified ID) or the API request was for an incorrect or unsupported path";
} 
if (status == 429) {
message = "Error 429: Rate Limit Exceeded! #This error indicates that the application has exhausted its maximum number of allotted API calls allowed for a given duration.";
}
if (status == 500) {
message = "Error 500: Internal Server Error! #This error indicates an unexpected condition or exception which prevented the server from fulfilling an API request.";
}
if (status == 503) {
message = "Error 503: Service Unavailable! #This error indicates the server is currently unavailable to handle requests because of an unknown reason.";
}
return message;
