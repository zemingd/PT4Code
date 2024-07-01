n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

ans = 0
a.each do |v|
    ans += v - 1
end
puts ans