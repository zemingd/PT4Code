n = gets.to_i
if n < 6
  puts n
  exit
end
amari = n%3
n -= amari
ans = 100000
for i in 0..n/6
  temp = 0
  k = 6*i
  while k != 0
    (Math.log(k,6).floor.to_i).downto(1) do |j|
      temp += k/(6**j)
      k = k%(6**j)
    end
  end
  m = n-6*i
  if m%9 == 0
    while m != 0
      (Math.log(m,9).floor.to_i).downto(1) do |j|
        temp += m/(9**j)
        m = m%(9**j)
      end
    end
    ans = [ans,temp].min
  end
end
puts ans+amari