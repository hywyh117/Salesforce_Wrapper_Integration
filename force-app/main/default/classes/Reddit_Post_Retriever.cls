public with sharing class Reddit_Post_Retriever {
    //To simplify, doesn't use Name Credential here.
    Private static final String REDDIT_URL = 'https://www.reddit.com/r/salesforce/hot.json?limit=1';


    public static List<Salesforce_Reddit.Children> getRedditData() {
        List<Salesforce_Reddit.Children> redditPost = new List<Salesforce_Reddit.Children>();
    
       //Set Connection
    Http httpCallout = new Http();
    HttpRequest req = new HttpRequest();
    req.setEndpoint();

    return redditPost;

    }

 
}
