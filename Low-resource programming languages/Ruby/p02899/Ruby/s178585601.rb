def main(argv)
  n = gets.chomp.to_i
  a = gets.chomp.split(' ').map(&:to_i)
  
  b = (1..n).to_a.map{|i| [i, a[i - 1]]}.sort{|lhs, rhs| lhs[1] <=> rhs[1]}.map{|x, y| x}
  puts b.map(&:to_s).join(' ')
end

if self.to_s == 'main' then
  main(ARGV)
end