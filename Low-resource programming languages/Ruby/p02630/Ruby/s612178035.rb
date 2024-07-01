n = gets.to_i
a = gets.split(" ").map(&:to_i)
q = gets.to_i
q.times{
  b, c = gets.split(" ").map(&:to_i)
  if a.include?(b)
    a.count(b).times{
      a[a.index(b)] = c  
    }
  end
  p a.sum
}