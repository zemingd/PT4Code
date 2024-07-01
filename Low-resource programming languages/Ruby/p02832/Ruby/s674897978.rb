N = gets.to_i
a = gets.split.map(&:to_i)
if a == [*1..N] then
  puts 0
  exit
end
s = 1
cnt = 0
a.each do |i|
  if s != i then
    cnt += 1
  else
    s += 1
  end
end
puts s == 1 ? -1 : cnt
