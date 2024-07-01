a=gets.chomp.split(" ").map(&:to_i)
p a
s=0
a.each do |e|
if e%2==0
  p e
end
end
