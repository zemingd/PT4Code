x,n = gets.split(' ').map(&:to_i)
pa = gets.split(' ').map(&:to_i)
a = 0
hoge = nil
plus = nil
minus = nil
while true do
  hoge = pa.length == 0
  plus = pa.include?(x+a)
  minus = pa.include?(x-a)
  if plus && minus
    a+=1
  else
    break
  end
end

if !minus
  puts x - a
elsif !plus
  puts x + a
else
  puts x
end