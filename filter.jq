.result.pageContext | {
  "version": "https://jsonfeed.org/version/1.1",
  "title": "The BellSoft Blog",
  "home_page_url": "https://bell-sw.com/",
  "feed_url": "https://joschi.github.io/bellsoft-blog-rss/feed.json",
  "favicon": "https://bell-sw.com/assets/images/favicon.png",
  items: [
    .nodes[] | {
      "id": .jsonId,
      "title": .data.title.iv,
      "content_text": .data.seo.iv.description,
      "image": .coverImage.childImageSharp.gatsbyImageData.images.fallback.src,
      "date_published": .data.publishedAt.iv,
      "date_modified": .data.updatedAt.iv,
      "authors": [{
        "name": .data.authors.iv[].data.name.iv
      }],
      "tags": .data.category.iv,
      "url": ("https://bell-sw.com" + .data.relativeUrl.iv)
    }]
}
