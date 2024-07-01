line = gets.chomp.split().map(&:to_i) # [7,3] int
cross = line[0] * line[1]
if line[0] == 1 || line[1] == 1 then
    ans = 1 # 1があると動けないのでまずい
else
   cross.even? ? ans = cross / 2 : ans = (cross / 2) + 1
end

puts ans