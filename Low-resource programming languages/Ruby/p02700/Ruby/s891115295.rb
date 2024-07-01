input = gets.split(" ")

a = input[0].to_i # 高橋くんのHP
b = input[1].to_i # 高橋くんのattack
c = input[2].to_i # 青木くんH
d = input[3].to_i # 青木くんA

while a > 0 do
    c = c - b
    if c <= 0
        puts "Yes"
        break
    end
    a = a - d
    
    if a <= 0 then
        puts "No"
        break
    end
end