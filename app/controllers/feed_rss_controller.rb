class FeedRssController < ApplicationController

  require 'rss'
  require 'open-uri'


  def show
 @rss = RSS::Parser.parse('https://www.newsisfree.com/feed/',false)
  end

end
