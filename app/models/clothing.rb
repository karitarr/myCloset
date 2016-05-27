class Clothing
  include Mongoid::Document
  field :description, type: String
  field :category, type: String
  field :brand, type: String
  field :color, type: String
  field :_id, type: String, default: ->{ description }
  has_many :outfits, autosave: true
end
