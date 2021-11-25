# == Schema Information
#
# Table name: vehicles
#
#  id          :integer          not null, primary key
#  host_id     :integer          not null
#  title       :string           not null
#  description :string
#  maker       :string
#  type        :string
#  address     :string
#  city        :string
#  lat         :decimal(10, 6)
#  lng         :decimal(10, 6)
#  status      :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Vehicle < ApplicationRecord
  validates :title, presence: true
  enum status: [:draft, :published, :archived]
  
  belongs_to :host, class_name: 'User'
end
