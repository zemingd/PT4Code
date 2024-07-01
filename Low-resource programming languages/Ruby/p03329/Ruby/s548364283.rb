N = gets.to_i
a = N
count = 1

while true do
  s = Math.sqrt(a)
  if s == s.floor then
    break
  end
  a = a - s.floor ** 2
  count += 1
end

puts count