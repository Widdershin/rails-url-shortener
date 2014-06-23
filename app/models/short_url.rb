class ShortUrl < ActiveRecord::Base
  attr_accessible :original_url, :short_url
end
