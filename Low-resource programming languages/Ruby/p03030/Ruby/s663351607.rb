class Book < Array
  def initialize
    super
  end

  def sort_by_city!
    self.sort! { |a, b| (a.city <=> b.city).nonzero? || b.rate <=> a.rate }
  end
end

class Restaurant
  attr_reader :city, :rate, :original_number

  def initialize(city, rate, original_number)
    @city = city
    @rate = rate
    @original_number = original_number
  end
end

n = gets.chomp.to_i
book = Book.new
n.times do |i|
  city, rate = gets.chomp.split(" ")
  book.push(Restaurant.new(city, rate.to_i, i + 1))
end

book.sort_by_city!

book.each { |restaurant| puts restaurant.original_number }
