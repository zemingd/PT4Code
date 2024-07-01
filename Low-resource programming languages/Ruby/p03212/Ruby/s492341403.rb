 = gets.to_i
ary = []
ns = ['7','5','3']
(3..9).each do |i|
  nums = ns.repeated_permutation(i).select{ |set| (ns - set).empty? }.map(&:join)
  ary += nums
end
 
 
cnt = ary.select{|num| num.to_i <= n}
puts cnt.length