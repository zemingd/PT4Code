N = gets.to_i
Ary = gets.split.map(&:to_i).sort

count = 0
Ary.each.with_index do |a, i|
  break if i == Ary.size - 1
  Ary[(i+1)..-1].each.with_index do |b, j|
    c = (Ary[(i+j+2)..-1].bsearch_index { |c| a + b <= c } )
    if c
      count += c
    else
      count += Ary[(i+j+2)..-1].size
    end
  end
end

puts count
