def method_name(n, ai)
  bi = Array.new(n, 0)
  (1..n).to_a.reverse.each do |i|
    j = i -1
    if ai[i-1].odd? != bi[i-1..-1].select.with_index{|v, k| (n - k) % i == 0}.sum.odd?
      bi[i-1] = 1
    end
  end
  p bi.sum
  str = bi.each_with_index.select{|e, i| e == 1}.map{|e| e[1] + 1}.join(" ")
  puts str if str != ""
end

n = gets.chomp.to_i
ai = gets.chomp.split.map(&:to_i)
method_name(n, ai)