_n = gets.strip.split('').map(&:to_i)
ideal =Array.new(_n.length)
ideal.fill{|i| i%2} if  _n[0] == 0
ideal.fill{|i| (i+1)%2} if  _n[0] == 1

count = 0
_n.each_with_index do |v, i|
  if v != ideal[i] then
    count+=1
  end
end

puts count