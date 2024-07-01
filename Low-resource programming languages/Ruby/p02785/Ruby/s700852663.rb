N,K = gets.strip.split.map(&:to_i)
num = gets.strip.split.map(&:to_i)
ary = num.sort
puts ary[0..(N-K-1)].sum