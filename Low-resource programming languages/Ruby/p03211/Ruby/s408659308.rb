minimam = 1000000000000000000

s = gets.chomp.split('')
i = 0

while i < s.count-2
	minimam = [(753-"#{s[i]}#{s[i+1]}#{s[i+2]}".to_i).abs, minimam].min
	i += 1
end

puts minimam