
arr = []

while true
  val1, val2, val3 = gets.split(" ").map(&:to_i)
  break if val1 == -1 && val2 == -1 && val3 == -1
  arr << [ val1, val2, val3 ]
end

ans = []

arr.each do |val|
  if val[0] == -1 || val[1] == -1
    ans << 'F'
  elsif 80 <= val[0] + val[1]
    ans << 'A'
  elsif 65 <= val[0] + val[1]
    ans << 'B'
  elsif 50 <= val[0] + val[1] || 50 <= val[2]
    ans << 'C'
  elsif 30 <= val[0] + val[1]
    ans << 'D'
  else
    ans << 'F'
  end
end

puts ans