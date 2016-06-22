require 'test_helper'

class ScheduleTest < ActiveSupport::TestCase
  test "if get a medic by a schedule" do
      puts "AQUUUI"
      puts Schedule.all
      a = Schedule.all
      puts a[0].id
      medics = Schedule.where(id:980190962).select('distinct medic_id')
      medic = medics[0]

    assert_equal medic.medic_id, 64810937
  end
end
