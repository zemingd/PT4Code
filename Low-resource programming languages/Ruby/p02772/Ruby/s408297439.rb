a=gets.chomp.split(" ").map(&:to_i)
p a
s=0
a.each do |e|
if e%2==0
if e%3==0 or e%5==0
p e
end
end
end