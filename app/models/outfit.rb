class Outfit
  include Mongoid::Document
  field :event, type: String
  field :notes, type: String
  field :worn_on, type: Date
  has_and_belongs_to_many :clothings, autosave: true
end
