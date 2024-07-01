i = 0
user = {}
while num = gets do
  a = num.split(" ")[0].to_i
  b = num.split(" ")[1].to_i
  if a == 0 && b == 0
    break
  end
  if a < b then
    user[i] = a.to_s + " " + b.to_s
  elsif a > b then
    user[i] = b.to_s + " " + a.to_s
  else
    user[i] = num
  end
  i += 1
end
user.each do |key,value|
  puts "#{value}"
end