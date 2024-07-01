n=gets.to_i
p=gets.split.map(&:to_i)
q=gets.split.map(&:to_i)
l = (1..n).to_a
a=0
b=0
i=0
l.permutation(n) do |s|
  if s==p
    a=i
  end
  if s==q
    b=i
  end
  i+=1
end
puts (a-b).abs
