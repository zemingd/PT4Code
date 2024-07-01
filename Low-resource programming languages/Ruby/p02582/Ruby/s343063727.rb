s = gets.chomp.split('')


result = 0
br = false

s.each do |x|
  if x == 'R' && br == true
    br = true
    result += 1
  elsif br == false && x == 'R'
    result = 1
    br = true
  else
    br = false 
  end
end

puts result