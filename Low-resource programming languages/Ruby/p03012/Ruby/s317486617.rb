n = gets.chomp.to_i
w = gets.chomp.split(" ").map{|s| s.to_i }

cl = 0
cr = n-1

left = w[cl]
right = w[cr]

until cl+1 == cr
  if left < right then
    cl += 1
    left += w[cl]
  else
    cr -= 1
    right += w[cr]
  end
end
puts (left - right).abs