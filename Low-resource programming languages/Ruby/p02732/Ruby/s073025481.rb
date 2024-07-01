N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

def c(n, k)
  ((n - k + 1)..n).reduce(&:*) / (1..k).reduce(&:*)
end

(1..N).each do |i|
  ans = 0
  p = A.clone
  p.slice!(i - 1)

  q = p.group_by{ |i| i }.map { |k, v| [k, v.size] }
  q.each do |j|
    next if j[1] < 2
    ans += c(j[1], 2)
  end
  puts ans
end
