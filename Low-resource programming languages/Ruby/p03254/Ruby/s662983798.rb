N, X, *AS = $stdin.read.split.map(&:to_i)
acc = X
AS.sort.each.with_index(1){|a, i|
  acc -= a
  if acc < 0
    p i-1; exit
  elsif acc == 0
    p i; exit
  end
}
p N-1
