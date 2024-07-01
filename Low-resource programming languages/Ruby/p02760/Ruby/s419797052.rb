a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
c = gets.split(" ").map(&:to_i)
bingos = []
n = gets.to_i

while bingo = gets do
    bingo = bingo.to_i
    bingos.push(bingo)
end

ary = [a,b,c]
result = []
ary.each do |line|
    line.each do |i|
        if bingos.include?(i)
            result.push(1)
        else
            result.push(0)
        end
    end
end

flag = "No"

if result[0]==1 and result[1]==1 and result[2]==1
    flag = "Yes"
elsif result[3]==1 and result[4]==1 and result[5]==1
    flag = "Yes"
elsif result[6]==1 and result[7]==1 and result[8]==1
    flag = "Yes"
elsif result[0]==1 and result[3]==1 and result[6]==1
    flag = "Yes"
elsif result[1]==1 and result[4]==1 and result[7]==1
    flag = "Yes"
elsif result[2]==1 and result[5]==1 and result[8]==1
    flag = "Yes"
elsif result[0]==1 and result[4]==1 and result[8]==1
    flag = "Yes"
elsif result[2]==1 and result[4]==1 and result[6]==1
    flag = "Yes"
end

puts flag