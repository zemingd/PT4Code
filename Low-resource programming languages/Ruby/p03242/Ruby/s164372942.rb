n = gets.chomp
array = n.split('')
array = array.map do |a|
  if a == "9"
    a = "1"
  elsif a == "1"
    a = "9"
  end
end
p array.join('').to_i