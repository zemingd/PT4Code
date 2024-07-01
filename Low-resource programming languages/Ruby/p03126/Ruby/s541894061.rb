n,m=gets.chomp.split.map(&:to_i)
eatTypes={}
n.times do
  temp = gets.chomp.split.map(&:to_i)
  temp.delete_at(0)
  temp.each do |number|
    eatTypes.key?(number) ? eatTypes[number] += 1 : eatTypes.store(number,1)
  end
end
count = 0
eatTypes.each do |key, value|
	count += 1 if value == n
end
puts count