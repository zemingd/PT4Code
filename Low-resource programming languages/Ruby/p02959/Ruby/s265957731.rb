n = gets.to_i
mon = gets.split.map(&:to_i)
hero = gets.split.map(&:to_i)

cnt = 0
for i in 0...n
    x = [mon[i], hero[i]].min
    cnt += x
    rest = hero[i] - x

    y = [mon[i+1], rest].min
    cnt += y
    mon[i+1] -= y
end

puts cnt
