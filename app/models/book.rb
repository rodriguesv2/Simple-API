class Book
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :author, type: String
  field :published_on, type: Date
end
