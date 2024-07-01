#set
n,y = gets.chomp.split(" ").map(&:to_i)
yukichi = 0
higuchi = 0
noguchi = 0

if y >= 10000 then
    yukichi = y / 10000
    y -= yukichi * 10000
end

if y >= 5000 then
    higuchi = y / 5000
    y -= higuchi * 5000
end

if y >= 1000
    noguchi = y / 1000
    y -= noguchi * 1000
end

sum = yukichi + higuchi + noguchi
if　y != 0 || sum > n then
    yukichi = -1
    higuchi = -1
    noguchi = -1
end

print ("#{yukichi} #{higuchi} #{noguchi}\n")