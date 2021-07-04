public with sharing class Reddit_Post_Retriever {
    //To simplify, doesn't use Name Credential here. Set it up in "Remote Setting"
    private static final String REDDIT_URL = 'https://www.reddit.com/r/salesforce/hot.json?limit=1';
    private static final String GET = 'Get';

    public static List<Salesforce_Reddit.Children> getRedditData() {
        List<Salesforce_Reddit.Data> redditData = new List<Salesforce_Reddit.Data>();
    
       //Set Connection
    Http httpCallout = new Http();
    HttpRequest req = new HttpRequest();
    req.setEndpoint(REDDIT_URL);
    req.setMethod(GET);

    HttpResponse redditResponse = httpCallout.send(req);
    //Call wrapper class parse method
    Salesforce_Reddit redditPostResponse = Salesforce_Reddit.parse(redditResponse.getBody());
    List<Salesforce_Reddit.Children> redditPosts = redditPostResponse.data.children;

    for(Salesforce_Reddit.Children child: redditPosts){
        redditData.add(child.data);
    }

    for(Salesforce_Reddit.Data data: redditData){
        system.debug(data.author_fullname);
        system.debug(data.name);
        system.debug(data.url);
    }

    return redditData;

    }

 
}
