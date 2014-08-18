class Search < ActiveRecord::Base

  def self.for keyword
    keyword_search = "%#{keyword.downcase}%"
    Project.where('lower(name) LIKE ?', keyword_search) +
        Article.where('lower(name) LIKE ?', keyword_search) +
        Article.where('lower(content) LIKE ?', keyword_search)
  end
end