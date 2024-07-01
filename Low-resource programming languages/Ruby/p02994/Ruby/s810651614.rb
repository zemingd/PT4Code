n, l = gets.chomp.split(" ").map(&:to_i)
p = []

for i in 1..n
  p << l+i-1
end

psum = p.inject(:+)
pmin = p.min_by{|x| (x-0).abs}

puts psum - pmin
