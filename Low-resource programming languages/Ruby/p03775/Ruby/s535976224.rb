n = gets.to_i
sqn = Math.sqrt(n).floor.to_i
ans = 10
for i in 1..sqn
  if n%i == 0
    a = n/i
    count = 0
    while a != 0
      a /= 10
      count += 1
    end
  end
  ans = [ans,count].min
end
puts ans