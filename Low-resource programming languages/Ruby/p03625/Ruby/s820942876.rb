N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

temp = Hash.new(0)
av = []
A.each do |a|
  temp[a] += 1
  if temp[a] % 2 == 0
    av << a
  end
end

if av.length < 2
  print 0
else
  print av.sort {|a, b| b <=> a }[0..1].inject(:*)
end