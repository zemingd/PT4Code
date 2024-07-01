a,b,c = gets.chomp.split.map(&:to_i)
k = gets.chomp.to_i

if a>b and a>c
  k.times{a*=2}
elsif b>c
  k.times{b*=2}
else
  k.times{c*=2}
end

puts a+b+c
