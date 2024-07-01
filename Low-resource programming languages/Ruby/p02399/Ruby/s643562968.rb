  a,b=$stdin.gets.split.map(&:to_i)
  printf "%d %d %f\n", a/b,a%b,a/b.to_f
