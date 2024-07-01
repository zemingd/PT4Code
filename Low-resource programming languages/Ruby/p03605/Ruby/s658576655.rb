ary = gets.chomp.chars.map &:to_i

res = "No"
ary.each do |v|
  if v == 9
    res = "Yes"
  end
end
puts res
