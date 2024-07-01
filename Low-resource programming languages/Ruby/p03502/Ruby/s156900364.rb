n = gets.to_i
f = 0

n.to_s.split("").each do |number|
  f += number.to_i
end

n % f == 0 ? answer = "Yes" : answer = "No"
puts answer
