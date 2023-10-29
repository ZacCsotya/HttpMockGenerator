/**
 * @Class Name     : HttpResponseMatchers
 * @Class Purpose  : HOUSES ALL OF THE RESPONSE MATCHING CLASSES (1 CLASS PER RESPONSE)
 * @Author         : Zachary Csotya
 * @Developed On   : 10/28/2023
 * @Last Modified  : 10/28/2023
**/
@isTest
public with sharing class HttpResponseMatchers {

    /**
     * @Class Name     : AuthMatcher
     * @Class Purpose  : (EXAMPLE) MATCHES AN AUTH REQUEST WITH AN AUTH RESPONSE 
     * @Author         : Zachary Csotya
     * @Developed On   : 10/28/2023
     * @Last Modified  : 10/28/2023
    **/
    public class AuthMatcher implements HttpMatchingStrategy {
        public HttpResponse matchResponse(HttpRequest req, Map<String, HttpResponse> responseStore, Boolean pass) {
            if(req.getEndpoint().contains('authentication-server')) {
                if (!failOnAuth) {
                    return responseStore.get('auth');
                } else {
                    return responseStore.get('authFailure');
                }
            } else {
                return null;
            }
        }
    } 
}