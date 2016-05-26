class Article
  include Mongoid::Document
  field :name, type: String
  field :content, type: String
  field :published_on, type: Date
  has_and_belongs_to_many :authors, autosave: true
end
