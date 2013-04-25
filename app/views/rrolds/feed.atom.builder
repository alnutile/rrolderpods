atom_feed({
  'language' => 'en-US',
  'xmlns:app' => 'http://www.w3.org/2007/app',
  'xmlns:openSearch' => 'http://a9.com/-/spec/opensearch/1.1/'}
  ) do |feed|
  feed.title "Ruby Rogues Episodes 1 thru 60"
  feed.updated Time.now

  feed.image do |image|
    image.url "#{root_url}#{image_path('feedimage.jpg')}"
    image.title "Ruby Rogues Episodes 1 thru 60"
    image.width  "101"
    image.height "104"
  end

  feed.itunes :author, "Ruby Rogues"
  feed.itunes :subtitle, "All the podcasts under 61"
  feed.itunes :summary, "Some players do not show the older podcasts so here they are"
  feed.itunes :keywords, "Ruby Rogues, ruby, rails"
  feed.itunes :image, "#{root_url}#{image_path('feedimage.jpg')}"
  feed.itunes :author, "Ruby Rogues Episodes 1 thru 60"
  feed.itunes :author, "Ruby Rogues Episodes 1 thru 60"
  feed.itunes :explicit, "no"



  @rrold.each do |item|
    next if item.updated_at.blank?

    feed.entry( item, :url => item.url ) do |entry|
      entry.title item.name
      entry.content item.url
      # entry.tag(item.created_at.strftime("%Y-%m-%dT%H:%M:%SZ"))
      entry.author do |author|
          author.name("Ruby Rogues")
      end

      entry.media :content, :url => "#{item.url}", :type => "audio/mpeg"
      entry.enclosure :url => "#{item.url}", :type => "audio/mpeg"
      # entry.content?
      # the strftime is needed to work with Google Reader.
      entry.updated(item.created_at.strftime("%Y-%m-%dT%H:%M:%SZ"))
    end
  end
end