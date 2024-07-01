x, y = gets.split.map(&:to_i)
a = [1,3,5,7,8,10,12]
b = [4,6,9,11]
c = [2]
[a,b,c].each do |g|
  if g.include?(x) && g.include?(y)
    puts 'Yes'
    exit
  end
end
puts 'No'
