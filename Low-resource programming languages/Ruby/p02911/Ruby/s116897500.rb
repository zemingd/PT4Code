n, k, q = gets.chomp.split(" ").map(&:to_i)
point = Array.new(n,k-q)
q.times do
  correct = gets.to_i
  point[correct-1] += 1
end
point.each do |p|
  if p > 0
    puts "Yes"
  else
    puts "No"
  end
end