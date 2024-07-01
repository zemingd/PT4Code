# A=gets.to_i
# B=gets.split.map(&:to_i)
# C=N.times.map{gets.to_i}
# D=N.times.map{gets.split.map(&:to_i)}
# S=gets.chomp
# MOD=1000000007


N,L=gets.split.map(&:to_i)

if L+N<0
  puts (L...(L+N-1)).inject(&:+)
elsif L>0
  puts ((L+1)...(L+N)).inject(&:+)
else
  puts (L...(L+N)).inject(&:+)
end