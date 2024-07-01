N = gets.to_i
a = gets.split.map(&:to_i)
ret = 0
a.length.times { |i|
  ((i+1)...a.length).each{ |j|
    ret += a[i] * a[j]
  }
}
puts ret