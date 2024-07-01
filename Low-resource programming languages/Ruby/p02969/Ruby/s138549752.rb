def method_name(n, ai)
  bi = Array.new(n, 0)
  n.downto(1) do |i|
    sum = (2*i).step(n, i).inject(0){|sum, j| sum += bi[j-1]}
    bi[i-1] = 1 if sum.odd? != ai[i-1].odd?
  end

  puts bi.inject(:+)
  bi.each_with_index{|v, k| puts k + 1 if v == 1}
end

n = gets.chomp.to_i
ai = gets.chomp.split.map(&:to_i)
method_name(n, ai)