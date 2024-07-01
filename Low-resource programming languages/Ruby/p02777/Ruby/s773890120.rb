S, T = gets.chomp.split
A, B = gets.split.map(&:to_i)
U = gets

ans = [A, B]
if U == S && A > 0
  ans[0] -= 1
elsif U == T && B > 0
  ans[1] -= 1
end

puts "#{ans[0]} #{ans[1]}"