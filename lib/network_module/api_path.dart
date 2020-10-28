enum APIPath {
  fetch_news,
}

class APIPathHelper{
  static String getValue(APIPath path){
    switch(path){
      case APIPath.fetch_news:
        return "/search";
      default:
        return "";
    }
  }
}