require 'rss'
require 'open-uri'

rss = RSS::Parser.parse('https://www.newsisfree.com/feed/',false)

rss.items.each do |item|
    puts "#{item.title}"

end
