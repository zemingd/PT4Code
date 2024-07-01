n, k, q = gets.chomp.split(' ').map(&:to_i)
a = []
q.times { a << gets.chomp.to_i }
points = Array.new(n).fill(0)
a.each { |i| points[i-1] += 1 }
points.each do |p|
  if p > q - k
    puts 'Yes'
  else
    puts 'No'
  end
end