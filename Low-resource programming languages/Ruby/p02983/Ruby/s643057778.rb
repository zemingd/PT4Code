a,b = gets.split.map(&:to_i)

ans = 2018
if a.modulo(2019) == 0 || b.modulo(2019) > a.modulo(2019) || (b-a) <= ans
  (b-a).times do |i|
    if ans > ((a+i) * (a+i+1)).modulo(2019)
    	ans = ((a+i) * (a+i+1)).modulo(2019)
    end
  end
else
  ans = 0
end

puts ans
