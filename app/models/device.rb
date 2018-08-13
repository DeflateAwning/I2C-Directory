class Device < ApplicationRecord
  has_and_belongs_to_many :address

  before_validation :ensure_has_slug

private
  def ensure_has_slug
    if slug.nil? || slug.empty?
      self.slug = to_slug(part_number)
    end
  end
end