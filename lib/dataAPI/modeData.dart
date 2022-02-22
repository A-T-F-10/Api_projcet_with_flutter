class NewsData{

 late String image;
 late String title;
  late String description;
 late String url;

  NewsData([this.description='',this.image='',this.title='',this.url='']);


 factory NewsData.fromJSON(Map<String,dynamic>json){

   NewsData get = NewsData();

   get.title = json['title'];
   get.image = json['urlToImage'];
   get.description = json['description'];
   get.url = json['url'];


    return get;
 }

}
