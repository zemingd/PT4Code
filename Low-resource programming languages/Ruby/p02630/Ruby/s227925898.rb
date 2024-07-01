n = gets.to_i
a = gets.split(" ").map(&:to_i)
q = gets.to_i
q.times{
  b, c = gets.split(" ").map(&:to_i)
  a.length.times{ |i|
    if a[i] == b
      a[i] = c    
    end
  }
  p a.sum
}
