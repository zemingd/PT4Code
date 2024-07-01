N = gets.to_i
P = gets.split.map &:to_i
p P.each_cons(3).count{|a|
  a[1] == a.sort[1]
}