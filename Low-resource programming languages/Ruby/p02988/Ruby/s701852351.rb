# N, K = gets.chomp.split.map(&:to_i)
# A = gets.chomp.split.map(&:to_i)

N = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)

r = 0
1.upto(p.size - 2).each do |i|
  if p[i-1] < p[i] && p[i] < p[i+1]
    r += 1
    next
  end
  
  if p[i+1] < p[i] && p[i] < p[i-1]
    r += 1
    next
  end
end

p r
    