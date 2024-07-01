N,K = gets.strip.split.map(&:to_i)
num = gets.strip.split.map(&:to_i)
ary = []
(0..N-K).each do |x|
  ary[x] = ((num[x..(x+K-1)].sum)+K).to_f/2
end
puts ary.max