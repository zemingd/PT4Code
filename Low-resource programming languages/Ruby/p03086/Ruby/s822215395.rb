S=gets.chomp
x=['A','C','G','T']
streak=0
max_streak=0
for i in 0...S.size do
    max_streak=[streak,max_streak].max
    if x.include?(S[i]) then
        streak+=1
    else
        streak=0
    end
end
max_streak=[streak,max_streak].max
p max_streak