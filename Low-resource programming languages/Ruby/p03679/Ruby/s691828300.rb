def q(x)
  return :delicious if x<=0
  return :safe if x<=X
  :dangerous
end
X,A,B=gets.split.map &:to_i
puts q(B-A)
