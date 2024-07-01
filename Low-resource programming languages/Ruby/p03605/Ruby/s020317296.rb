ary = gets.chomp.chars.map &:to_i

res = "NO"
ary.each do |v|
  if v == 9
    res = "YES"
  end
end
puts res
