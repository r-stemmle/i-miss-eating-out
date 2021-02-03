class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def menu_dish_names
    menu_dishes = []
    self.dishes.each do |dish|
      menu_dishes << dish.upcase
    end
    menu_dishes
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
    tw_four_format = 0
    tw_four_format = self.opening_time.to_i + hours_of_open
    "#{tw_four_format}:00"
  end
end
