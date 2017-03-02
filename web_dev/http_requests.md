1. What are some common HTTP status codes?

Some commong HTTP status codes include: 

404 Not Found 
403 Forbidden
500 Internal Server Error
503 Service Unavailable
504 Gateway Timeout

2. What is the difference between a GET request and a POST request? When might each be used?

GET is for retrieving data.  It allows you to be able to request the same URL over and over harmlessly.  

POST is for writing data. Making multiple identical write requests will likely result in multiple writes. POST is not secure.  The data is in the body of the request instead of the URL but it is trivially simple to view/edit.

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are pieces of data that could be stored and kept for the next request if from the same server. For example, it could be useful when entering a log in that you continuously use for certain websites.

