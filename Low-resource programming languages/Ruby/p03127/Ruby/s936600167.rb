x = gets.to_i
as = gets.split.map(&:to_i)

r = nil
as.each{|a|
  if r
    r = r.gcd(a)
  else
    r = a
  end
}
p r