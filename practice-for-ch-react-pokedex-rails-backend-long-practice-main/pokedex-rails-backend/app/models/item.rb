# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint           not null
#  name       :string           not null
#  price      :integer          not null
#  happiness  :integer          not null
#  image_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord
  validates :name, :happiness, :image_url, presence: true
  validates :name, length: {maximum: 255}
  validates :price, numericality: { greater_than: 0 }



  belongs_to :pokemon
end
