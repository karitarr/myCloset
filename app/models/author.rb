class Author
  include Mongoid::Document
  field :name, type: String
  field :_id, type: String, default: ->{ name }
  has_many :articles, autosave: true
end
