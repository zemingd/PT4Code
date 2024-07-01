n = gets.chomp.to_i
s = Array.new
ac = 0
wa = 0
tle = 0
re = 0
i = 0
for i in 1..n do
    r = gets.chomp.to_s
    i +=1
    case r
    when "AC" then
        ac +=1
    when "WA" then
        wa +=1
    when "TLE" then
        tle +=1
    when "RE" then
        re +=1
    end
end
printf("AC x %d\n",ac)
printf("WA x %d\n",wa)
printf("TLE x %d\n",tle)
printf("RE x %d\n",re)