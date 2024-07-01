n,k=gets.chomp.split(" ").map(&:to_i)
s=gets.chomp.split("")
result = ""
s.each_with_index do |c, i|
  if i + 1 == k then
    result << c.downcase
  else
    result << c
  end
end

puts result

