class Airline < ApplicationRecord
  has_many :reviews

  def slugify
    self.slug = name.paramterize
  end
end
