n = gets.to_i
location = gets.split.map(&:to_i)
p = (location.inject(:+).to_f / location.size).round
ans = 0
location.each do |i|
    ans += (i - p)**2
end
puts ans