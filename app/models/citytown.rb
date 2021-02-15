class Citytown < ApplicationRecord
  belongs_to :user
  has_many :schools, class_name: "school", foreign_key: "reference_id"

   ################## VALIDATES  ###############
  validates :title,:slug, presence: true,
                          length: { maximum:100 }
  
                          




  extend FriendlyId
    friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end
end
