atom_feed({
  'language' => 'en-US',
  'xmlns:app' => 'http://www.w3.org/2007/app',
  'xmlns:openSearch' => 'http://a9.com/-/spec/opensearch/1.1/'}
  ) do |feed|
  feed.title "Ruby Rogues Episodes 1 thru 60"
  feed.updated Time.now

  @rrold.each do |item|
    next if item.updated_at.blank?

    feed.entry( item, :url => item.url ) do |entry|
      entry.title item.name
      entry.content item.url
      # entry.tag(item.created_at.strftime("%Y-%m-%dT%H:%M:%SZ"))
      entry.author do |author|
          author.name("Ruby Rogues")
      end
      # entry.content?
      # the strftime is needed to work with Google Reader.
      entry.updated(item.created_at.strftime("%Y-%m-%dT%H:%M:%SZ"))
    end
  end
end