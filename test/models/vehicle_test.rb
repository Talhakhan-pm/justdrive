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
require "test_helper"

class VehicleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
