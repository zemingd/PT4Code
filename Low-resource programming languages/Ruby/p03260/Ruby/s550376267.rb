A, B = gets.split.map(&:to_i)
flag = nil

(1..3).each do |i|
  result = A * B * i.to_i
  if result%2 == 1
    flag = true
    break
  end
end

if flag
  puts "Yes"
else
  puts "No"
end
