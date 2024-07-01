x = gets.to_i
f = x.to_s.chars.map(&:to_i).inject(0,&:+)
puts (x % f == 0 ? 'Yes' : 'No')
  