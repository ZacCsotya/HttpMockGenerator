/**
 * @Class Name     : HttpResponseFactory
 * @Class Purpose  : SERVES AS DATA FACTORY FOR ALL YOUR HTTP RESPONSES
 * @Author         : Zachary Csotya
 * @Developed On   : 10/28/2023
 * @Last Modified  : 10/28/2023
**/
@isTest
public with sharing class HttpResponseFactory {
    
    /**
    * @description : CREATES AND RETURNS AN HTTP RESPONSE
    * @author Zachary Csotya | 10/28/2023 
    * @param Integer code 
    * @param String status 
    * @param String body 
    * @return HttpResponse 
    **/
    public static HttpResponse createHttpResponse(Integer code, String status, String body) {
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(body);
        res.setStatus(status);
        res.setStatusCode(code);

        return res;
    }

    // # AUTHENTICATION

    /**
    * @description : (EXAMPLE) WILL BUILD A RESPONSE BODY, SET THE STATUS, AND STATUS CODE FOR A SUCCESSFUL RESPONSE
    * @author Zachary Csotya | 10/28/2023 
    * @return HttpResponse 
    **/
    public static HttpResponse authentication200Response() {
        // * EXAMPLE RESPONSE BODY
        String body = '{' +
            '"access_token": "123", ' +
            '"token_type": "Bearer"' +
        '}';
        return createHttpResponse(200, 'OK', body);
    }
        
    /**
    * @description : (EXAMPLE) WILL BUILD A RESPONSE BODY, SET THE STATUS, AND STATUS CODE FOR A FAILED RESPONSE
    * @author Zachary Csotya | 10/28/2023 
    * @return HttpResponse 
    **/
    public static HttpResponse authenticationFailureResponse() {
        String body = '{' +
            '"message": "access denied", ' +
        '}';

        return createHttpResponse(401, 'Unauthorized', body);
    }
}