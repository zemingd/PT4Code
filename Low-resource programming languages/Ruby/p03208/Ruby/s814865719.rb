s = gets.chomp!.split(" ")
s = s.map{|item| item=item.to_i}
trees = Array.new(s[0],0)
trees = trees.map{|item| item = gets.chomp!.to_i}
trees = trees.sort
answer = trees[s[0]-1]

for i in s[1]-1..s[0]-1
	if trees[i]-trees[i-s[1]+1]<answer then answer = trees[i]-trees[i-s[1]+1] end
end

puts answer