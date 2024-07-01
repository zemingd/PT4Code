nx = gets.chars
as = gets.split(' ').map{|a| a.to_i}

n = nx.first.to_i
x = nx[2].to_i
count = 0

for i in 1..n-1 do
  diff = as[i] + as[i-1] - x
  if diff > 0
    as[i] -= diff
    as[i] = 0 if as[i] < 0
  
    count += diff
  end
end

puts count