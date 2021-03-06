require_relative 'pannier'
require_relative 'abstract_bike'

class RoadBike < AbstractBike

  def initialize
    @panniers = [Pannier.new, Pannier.new]
    @daily_rate = 15
  end

  def clean
    puts "Cleaning..."
  end

  def lubricate_gears
    puts "Lubricating gears..."
  end

  def panniers
    @panniers
  end

  def daily_rate
    @daily_rate
  end

  def weekly_rate
    daily_rate * 7
  end

  def equipment_cost
    panniers[0].price + panniers[1].price
  end

end
