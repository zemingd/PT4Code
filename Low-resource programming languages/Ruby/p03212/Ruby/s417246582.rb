n = gets.to_i
ary = []
ns = ['7','5','3']
(3..9).each do |i|
  nums = ns.permutation(i).select{ |set| (ns - set).empty? }.map(&:join)
  ary += nums
end


cnt = ary.select{|num| num <= n}
puts cnt.length