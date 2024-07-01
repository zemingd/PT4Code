n = gets.to_i
p = gets.chomp.split().map(&:to_i)

count = 1
i = 1
ind = 0
while true
 ind = p.index(p.min)
 if ind == 0
   break
 elsif ind == 1
   p = [p[0]]
 else
   p = p[0..(ind-1)]
 end
 count += 1
end
puts count