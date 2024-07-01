n = $stdin.gets.to_i
m = n.split("").map(&:to_i)
num = 0
m.length do |i|
  num = mun + m[i-1]
end

if n % num == 0
  p "Yes"
else
  p "No"
end