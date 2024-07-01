a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

ha = { a => a%10-10, b => b%10-10, c => c%10-10, d => d%10-10, e => e%10-10 }
j = Hash[ ha.sort_by {|_,v| v} ]
flag = false
ans = 0

j.each do |k,v|
  if v == -10 then
    ans += k
  elsif not flag then
    ans += k
    flag = true
  else
    ans = ans + k - v
  end
end

p ans
