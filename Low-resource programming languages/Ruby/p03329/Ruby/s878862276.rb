n = gets.to_i
if n < 6
  puts n
  exit
end
amari = n%3
n -= amari
ans = 100000
for i in 0..n/9
  temp = 0
  k = 9*i
  while k != 0
    (Math.log(k,9).floor.to_i).downto(1) do |j|
      temp += k/(9**j)
      k = k%(9**j)
    end
  end
  m = n-9*i
  if m%6 == 0
    while m != 0
      (Math.log(m,6).floor.to_i).downto(1) do |j|
        temp += m/(6**j)
        m = m%(6**j)
      end
    end
    ans = [ans,temp].min
  end
end
puts ans+amari