n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = a[0]
a.each do |e|
    ans = ans.gcd(e)
end
puts ans