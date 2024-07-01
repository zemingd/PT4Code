a,b,c = gets.chop.split.map(&:to_i)
k = gets.to_i

x = ([a,b,c].max)*2**k
puts a+b+c+x-[a,b,c].max