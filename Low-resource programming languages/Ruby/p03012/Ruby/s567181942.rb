N=gets.chomp.to_i
W=gets.chomp.split.map(&:to_i)

ans=100000000
(0..(N-2)).each do |i|
  a=W[0..i].inject {|sum, n| sum + n }
  b=W[(i+1)..(N-1)].inject {|sum, n| sum + n }
  ans=(a-b).abs if ans>((a-b).abs)
end
puts ans