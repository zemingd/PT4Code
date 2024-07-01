a = gets.to_i
b = gets.to_i
postal = gets

flag1 = false
flag2 = false
flag3 = false

if postal[a] == "-"
  flag1 = true
end

a+b+1.times do |i|
  if i == a
    next
  elsif postal[i] == "-"
    break
  end
  flag2 = true
end

if postal.length == a+b+2
  flag3 = true
end

if flag1 && flag2 && flag3
  puts "Yes"
else
  puts "No"
end