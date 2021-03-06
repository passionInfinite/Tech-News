class Headline {
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;

  Headline(this.title, this.description, this.url, this.urlToImage,
      this.publishedAt);

  static String _getDate(String date) {
    List<String> dateChunks = date.split("T");
    return dateChunks[0];
  }

  static List<Headline> getAll(List json) {
    List<Headline> headlines = new List<Headline>();
    for (int i = 0; i < json.length; i++) {
      headlines.add(new Headline(json[i]['title'], json[i]['description'],
          json[i]['url'], json[i]['urlToImage'], _getDate(json[i]['publishedAt'])));
    }
    return headlines;
  }
}
