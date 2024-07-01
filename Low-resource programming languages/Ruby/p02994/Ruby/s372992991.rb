input = gets.split(" ").map{|item| item.to_i}
N = input[0]
L = input[1]

def taste(i)
  L+i-1
end

total_taste = 0
taste_array = []
for i in 0...N
  total_taste += taste(i+1)
  taste_array.push(taste(i+1))
end

if taste(1) >= 0
  p total_taste - taste(1)
elsif taste(N) <= 0
  p total_taste - taste(N)
else
  p total_taste
end