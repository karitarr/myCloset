class Clothing
  include Mongoid::Document
  field :name, type: String
  field :_id, type: String, default: ->{ name }
  has_many :outfits, autosave: true
end
