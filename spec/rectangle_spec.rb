require 'rspec'
require_relative '../rectangle'

RSpec.describe Rectangle do
  context 'при правильних значеннях' do
    it 'правильно обчислює площу' do
      rectangle = Rectangle.new(5, 10)
      expect(rectangle.area).to eq(50)
    end

    it 'повертає правильну площу з плаваючою комою' do
      rectangle = Rectangle.new(4.5, 3.2)
      expect(rectangle.area).to be_within(0.01).of(14.4)
    end
  end

  context 'при нульових значеннях' do
    it 'правильно обчислює площу, якщо довжина дорівнює 0' do
      rectangle = Rectangle.new(0, 10)
      expect(rectangle.area).to eq(0)
    end

    it 'правильно обчислює площу, якщо ширина дорівнює 0' do
      rectangle = Rectangle.new(5, 0)
      expect(rectangle.area).to eq(0)
    end

    it 'правильно обчислює площу, якщо обидва значення дорівнюють 0' do
      rectangle = Rectangle.new(0, 0)
      expect(rectangle.area).to eq(0)
    end
  end

  context 'при від\'ємних значеннях' do
    it 'повертає негативну площу, якщо довжина від\'ємна' do
      rectangle = Rectangle.new(-5, 10)
      expect(rectangle.area).to eq(-50)
    end

    it 'повертає негативну площу, якщо ширина від\'ємна' do
      rectangle = Rectangle.new(5, -10)
      expect(rectangle.area).to eq(-50)
    end

    it 'повертає позитивну площу, якщо обидва значення від\'ємні' do
      rectangle = Rectangle.new(-5, -10)
      expect(rectangle.area).to eq(50)
    end
  end
end
