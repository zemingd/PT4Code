n = gets.to_i
takoyakis = gets.split(" ")
takoyakis.map!(&:to_i)
answer = 0

for i in 0..n-1
  for j in i+1..n-1
    answer += takoyakis[i]*takoyakis[j]
  end
end

puts answer