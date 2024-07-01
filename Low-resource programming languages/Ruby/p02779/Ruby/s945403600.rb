N=gets.to_i
a=gets.split.map &:to_s
b=a.uniq
puts a.count===b.count ? 'YES' : 'NO'