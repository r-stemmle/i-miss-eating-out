class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def ann_closing_time(hours_of_open)
    twelve_hr_format = self.opening_time.to_i + hours_of_open
    if twelve_hr_format > 12
      "#{twelve_hr_format - 12}:00PM"
    else
      "#{twelve_hr_format}:00AM"
    end
  end

  def announce_closing_time(hours_of_open)
    "#{name} will be closing at #{ann_closing_time(hours_of_open)}"
  end

  def menu_dish_names
    menu_dish_names = self.dishes.map do |dish|
      dish.upcase
    end
  end

  def open_for_lunch?
    if self.opening_time.to_i < 12
      true
    else
      false
    end
  end

  def add_dish(dish)
    @dishes << dish
  end

  def closing_time(hours_of_open)
    tw_four_format = self.opening_time.to_i + hours_of_open
    "#{tw_four_format}:00"
  end
end
