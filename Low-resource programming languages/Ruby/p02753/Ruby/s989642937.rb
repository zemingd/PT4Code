S = gets.chomp


a = false
b = false

S.chars.each do |s|
  if s == 'A'
    a = true
  end

  if s == 'B'
    b = true
  end
end

if a & b
  puts "Yes"
else
  puts "No"
end
