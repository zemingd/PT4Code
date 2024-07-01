n,m = gets.chomp.split(' ').map(&:to_i)

def comb(a,b)
  ((a-b+1)..a).inject(:*) / (1..b).inject(:*)
end

puts comb(n,2) + comb(m,2)
