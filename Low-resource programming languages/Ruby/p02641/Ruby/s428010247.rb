io = STDIN
x,n=io.gets.split.map(&:to_i)
pn=io.gets.split.map(&:to_i)
puts ((0..100).to_a-pn).sort_by{|i|(i-x).abs*1000+i}.first
