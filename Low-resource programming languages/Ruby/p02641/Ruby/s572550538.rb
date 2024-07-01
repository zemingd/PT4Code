x, n = gets.split.map(&:to_i)
if n==0
  p x
  exit
end
p = gets.split.map(&:to_i)
if !p.include?(x)
  p x
  exit
end
100.times{|i|
  if !p.include?(x-i)
    p x-i
    exit
  end
  if !p.include?(x+i)
    p x+i
    exit
  end
}
