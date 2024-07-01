nu,mo = gets.chomp.split(" ").map(&:to_i)

if nu*1000 > mo || nu*10000 < mo
  puts "-1 -1 -1"
  exit
end

for i in 0..mo / 10000
  for j in 0..(mo - i*10000) / 5000
    if i*10000 + j*5000 + (nu - i - j)*1000 == mo
      print i
      print " "
      print j
      print " "
      print nu - i - j
      exit
    end
  end
end

puts "-1 -1 -1"
