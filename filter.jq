.result.pageContext | {
  "version": "https://jsonfeed.org/version/1.1",
  "title": .title,
  "home_page_url": "https://bell-sw.com/",
  "feed_url": "https://joschi.github.io/bellsoft-blog-rss/feed.json",
  "favicon": "https://bell-sw.com/assets/images/favicon.png",
  items: [
    .nodes[] | {
      "id": .postData.jsonId,
      "title": .postData.data.title.iv,
      "content_text": .postData.data.seo.iv.description,
      "image": ("https://bell-sw.com" + .postCover.images.fallback.src),
      "date_published": .postData.data.publishedAt.iv,
      "date_modified": .postData.data.updatedAt.iv,
      "authors": [{
        "name": .postAuthorsData[].authorData.name.iv,
        "avatar": ("https://bell-sw.com" + .postAuthorsData[].authorGatsbyImageData.images.fallback.src)
      }],
      "tags": .postData.data.category.iv,
      "url": ("https://bell-sw.com" + .postData.data.relativeUrl.iv)
    }]
}
