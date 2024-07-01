n=gets.to_i
aa=gets.chomp.split.map(&:to_i)
mt=mb=nil
((-aa.max)..(aa.max)).map do |b|
  t=0
  aa.each_with_index do |a, i|
    t+=(a-(b+i+1)).abs
    break if !mt.nil? && mt < t
  end
  mt,mb=[t,b] if mt.nil? || t < mt
end
puts mt
