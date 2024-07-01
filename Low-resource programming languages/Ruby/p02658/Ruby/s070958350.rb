gets
a = 1
gets.split.map(&:to_i).each{|b|
  a *= b
  if a > 10**18
    p -1
    exit
  end
}
p a