atom_feed :language => 'en-US' do |feed|
  feed.title "Ruby Rogues Episodes 1 thru 60"
  feed.updated Time.now
  feed.url "http://traffic.libsyn.com/rubyrogues/"

  @rrold.each do |item|
    next if item.updated_at.blank?

    feed.entry( item, :url => item.url ) do |entry|
      entry.title item.name
      entry.length item.size

      # the strftime is needed to work with Google Reader.
      entry.updated(item.created_at.strftime("%Y-%m-%dT%H:%M:%SZ"))
    end
  end
end