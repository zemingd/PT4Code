l, r = gets.chomp.split.map(&:to_i)
length = r - l + 1
puts 0 if length >= 2019; exit

mod_l = l % 2019
puts 0 if mod_l == 0 || mod_l + length >= 2019; exit

ans = 2019
[mod_l..length - 1].combination(2) do |p1, p2|
  q = p1 * p2 % 2019
  ans = q if q < ans
end

puts ans