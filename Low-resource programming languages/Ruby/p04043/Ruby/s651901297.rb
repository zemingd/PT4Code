count5 = 0
count7 = 0

arr = $stdin.gets.chomp.split(/\s+/)

arr.map do |str|
  if str.size == 5
    count5 += 1
  end
  if str.size == 7
    count7 += 1
  end
end

answer = (count5 == 2 && count7 == 1) ? "YES" : "NO"

puts answer 
