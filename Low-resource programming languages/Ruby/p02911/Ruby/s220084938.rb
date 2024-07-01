N, K, Q = gets.chomp.split(" ").map(&:to_i)
a = {}
Q.times { |i| a[i + 1] = gets.chomp.to_i }

X = Hash.new(0)
a.each do |i, p|
  X[p] += 1
end

1.upto(N) do |p|
  if X[p] > Q - K
    puts "Yes"
  else
    puts "No"
  end
end
