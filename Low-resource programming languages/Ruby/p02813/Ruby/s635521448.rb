N = STDIN.gets.to_i
P = STDIN.gets.split(' ').map{|s| s.to_i}
Q = STDIN.gets.split(' ').map{|s| s.to_i}

n = 1.upto(N).to_a
n_all = n.permutation(N).to_a

pn = -1
qn = -1
n_all.each_with_index do |c, i|
  if c == P
    pn = i + 1
  end
  if c == Q
    qn = i + 1
  end
end

puts (pn - qn).abs

