N, X, *XS = $stdin.read.split.map(&:to_i)
diffs = (XS + [X]).sort.each_cons(2).map{|a, b| b - a}
p diffs.sort.reverse.inject{|a, b|
  until b == 0
    a, b = b, a % b
  end
  a
}