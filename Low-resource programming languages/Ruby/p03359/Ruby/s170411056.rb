input = gets
month = input.split(" ")[0].to_i
day = input.split(" ")[1].to_i

m = 1
d = 1

takahashi = 1

loop do 
  m += 1
  d += 1

  if month >= m && day >= d
    takahashi += 1
  else
    break
  end
end

puts takahashi
