N = gets.to_i
X = gets.split.map(&:to_i)

sorted = X.sort.reverse
m_index = (N-1)/2
m1 = sorted[m_index]
m2 = sorted[m_index+1]

X.each do |x|
  if x < m1
    puts m1
  else
    puts m2
  end
end
