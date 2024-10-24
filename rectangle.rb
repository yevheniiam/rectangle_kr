class Rectangle
  attr_accessor :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end

  # Метод для обчислення площі
  def area
    length * width
  end
end
