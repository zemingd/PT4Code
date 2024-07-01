X, Y, Z, K = gets.split.map(&:to_i)
a_list = gets.split.take(X).map(&:to_i).sort_by { |n| -n }
b_list = gets.split.take(Y).map(&:to_i).sort_by { |n| -n }
c_list = gets.split.take(Z).map(&:to_i).sort_by { |n| -n }

ret = []
a_list.each do |a|
  b_list.each do |b|
    c_list.each do |c|
      ret.push(a + b + c)
    end
  end
end
ret = ret.sort_by { |n| -n }
K.times do |i|
  puts ret[i]
end
