n = gets.chomp.to_i
plist = gets.chomp.split.collect{ |item| item.to_i}

result = 0
(n-2).times do |i|
  pl = plist[i]
  pc = plist[i+1]
  pr = plist[i+2]
  if pl < pc && pc < pr
    result += 1
  elsif pr < pc && pc < pl
    result += 1
  end
end

puts result