class Array
  def gcd
    inject(:gcd)
  end
end
n, x = gets.chomp.split(" ").map(&:to_i)
spots = gets.chomp.split(" ").map(&:to_i)
abss = []
spots.each do |spot|
  abss << (spot - x).abs
end
abss.uniq!
puts abss.gcd
