/**
 * @Class Name     : HttpMatchingStrategy
 * @Class Purpose  : PROVIDE A BLUEPRINT HTTP RESPONSE MATCHING
 * @Author         : Zachary Csotya
 * @Developed On   : 
 * @Last Modified  : 10/28/2023
**/
public interface HttpMatchingStrategy {
    HttpResponse matchResponse(HttpRequest req, Map<String, HttpResponse> responseStore, Boolean pass);
}