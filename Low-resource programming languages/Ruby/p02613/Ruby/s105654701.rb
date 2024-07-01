input = readlines.map(&:chomp)

AC = 0
WA = 0
TLE = 0
RE = 0

i = 1

while i <= input[0].to_i
    case input[i]
    when 'AC' then
        AC += 1
    when 'WA' then
        WA += 1
    when 'TLE' then
        TLE += 1
    when 'RE' then
        RE += 1
    end
    i += 1
end

p "AC×#{AC}"
p "WA×#{WA}"  
p "TLE×#{TLE}"
p "RE×#{RE}"
