require "./test/test_helper"

class Example
  attr_accessor :vehicle_type

  def initialize(vehicle_type)
    @vehicle_type = vehicle_type
  end

  include AttrInquirer
  attr_inquirer :vehicle_type
end

class TestAttrInquirer < Minitest::Test
  def test_vehicle_type_question_methods
    example = Example.new('car')

    assert example.vehicle_type.car?
    refute example.vehicle_type.bike?

    example.vehicle_type = 'bike'
    refute example.vehicle_type.car?
    assert example.vehicle_type.bike?

    example.vehicle_type = 'scooter'
    refute example.vehicle_type.car?
    refute example.vehicle_type.bike?
    assert example.vehicle_type.scooter?

    example.vehicle_type = 'train'
    refute example.vehicle_type.car?
    refute example.vehicle_type.bike?
    refute example.vehicle_type.scooter?
    assert example.vehicle_type.train?
  end
end
