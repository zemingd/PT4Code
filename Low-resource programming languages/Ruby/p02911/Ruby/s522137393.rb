n, k, q = gets.split.map(&:to_i)
ary = Array.new(n, k - q)
q.times do
  a = gets.to_i
  ary[a - 1] += 1
end

ary.each { |a| puts a.positive? ? 'Yes' : 'No' }