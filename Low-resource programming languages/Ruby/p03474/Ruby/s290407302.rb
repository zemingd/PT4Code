a, b = gets.split.map(&:to_i)
s = gets.chomp

ok = true
(a+b+1).times do |i|
  if i == a
    ok &= s[i] == '-'
  else
    ok &= s[i] =~ /[0-9]/
  end
end

puts ok ? "Yes" : "No"
