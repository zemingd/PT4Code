n = gets.chomp
a = n.split('')
a = a.map do |a|
  if a == "9"
    a = "1"
  elsif a == "1"
    a = "9"
  end
end
p a.join('').to_i
