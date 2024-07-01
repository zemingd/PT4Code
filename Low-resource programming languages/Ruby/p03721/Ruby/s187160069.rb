N,k = gets.split.map(&:to_i)
h = {}
N.times{
  a,b = gets.split.map(&:to_i)
  h[a] = (h[a] || 0) + b
}
h.keys.sort.each{ |a|
  k -= h[a]
  if k <= 0
    puts a; exit
  end
}
