str = ["0"]
s = gets.to_s.chomp
q = gets.to_i
# print str
# print q
ret = 0

q.times do |i|
  arr = gets.split(' ').to_a
  if arr[0] == "1"
    ret += 1
  elsif ((arr[1] == "1") && (ret % 2 == 0)) || ((arr[1] == "2") && (ret % 2 == 1))
      str.unshift(arr[2])
  else
    str.push(arr[2])
  end
end

n = str.index("0")

if ret % 2 == 0
  str[n] = s
else
  str[n] = s.reverse
  str.reverse!
end

print(str.join(''))