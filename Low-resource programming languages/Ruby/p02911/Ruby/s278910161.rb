n,k,q = gets.chomp.split(" ").map(&:to_i)
b = k-n-1

point = Array.new(n+1){0}

q.times do
  point[gets.to_i] += 1
end

n.times do |i|
  if point[i+1] > b
    puts("Yes")
  else
    puts("No")
  end
end