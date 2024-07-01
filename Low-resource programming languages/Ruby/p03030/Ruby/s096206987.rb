n = gets.chomp.to_i

class Restaurant
  attr_accessor :s, :p, :i

  def initialize(s, p, i)
    @s = s
    @p = p
    @i = i
  end

  def <=>(other)
    cmp = self.s <=> other.s
    if cmp.zero?
      other.p <=> self.p
    else
      cmp
    end
  end

  def to_s
    "s: #{s}, p: #{p}, i: #{i}"
  end
end

restaurants = []

n.times do |i|
  token = gets.chomp.split(" ")

  restaurants << Restaurant.new(token[0], token[1].to_i, i + 1)
end

puts restaurants.sort.map(&:i)
