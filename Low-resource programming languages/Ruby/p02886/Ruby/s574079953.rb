n = gets.to_i
takoyaki_points = gets.chomp.split(' ').map(&:to_i)
ans = 0
takoyaki_points.combination(2) do |i|
    ans += i.inject(1){|sum,num|sum * num}
end
puts ans