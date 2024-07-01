s = gets.chomp.chars
count = 0
flag = true

s.each do |x|
  if x == "R" && flag == true
    count += 1
  elsif x == "S"
    flag = false
  elsif x == "R"
    count = 1
    flag = true
  end
end

puts count
