n, k = gets.split.map(&:to_i)
ab = []
n.times { ab << gets.split.map(&:to_i) }
ab.sort!
sum = 0
ab.each do |x|
  sum += x[1]
  if sum >= k
    p x[0]
    exit
  end
end