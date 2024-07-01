n = gets.to_i
num = gets.chomp.split(" ").map(&:to_i)

i = 0
ans = 0
cal = 0

(n-1).times do
  if num[i] >= num[i+1]
    cal += 1
    i += 1
  else
    if cal > ans
      ans = cal
      cal = 0
    end
    i += 1
  end 
end

if cal > ans
  ans = cal
end

puts ans
