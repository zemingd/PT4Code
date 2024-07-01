array = []
gets.split(" ").each do |n| 
if ["+","-","*"].include?(n)
  a = array.pop
  b = array.pop
  case n
    when "+"
      array.push(b + a)
    when "-"
      array.push(b - a)
    when "*"
      array.push(b * a)
  end
  next
end
array.push(n.to_i)
end

puts array[0]
