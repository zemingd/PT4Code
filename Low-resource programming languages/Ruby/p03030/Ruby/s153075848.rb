n = gets.to_i

Restaurant = Struct.new(:id, :city, :point) do
  include Comparable

  def <=>(other)
    result = self.city <=> other.city
    if result == 0
      result = other.point <=> self.point
    end

    result
  end
end
restaurants = []
n.times do |i|
  s, p = gets.split(' ')
  restaurants << Restaurant.new(i+1, s, p.to_i)
end
restaurants.sort.map(&:id).each do |id|
  print "#{id}\n"
end