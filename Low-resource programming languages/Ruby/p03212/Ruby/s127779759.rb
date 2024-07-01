n = gets.chomp.to_i
a = ['3', '5', '7']
ans = 0

(1..10).each do |i|
  a.repeated_permutation(i).to_a.each do |x|
    x_i = x.reduce(:+).to_i
    if (a - x).empty? && x_i <= n
      ans += 1
    end
  end
end

puts ans