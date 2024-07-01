_n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort.reverse

puts a[m-1] > a.inject(:+) / 4*m ? 'Yes':'No'