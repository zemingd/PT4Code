n,k,q = gets.split.map(&:to_i)
point = Array.new(n,0)
for i in 1..q
  point[(gets.to_i)-1] += 1
end
for i in 0..n-1
  if point[i] > q-k
    puts "Yes"
  else
    puts "No"
  end
end
