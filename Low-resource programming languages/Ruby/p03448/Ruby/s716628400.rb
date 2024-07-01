a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

def calc(array)
    total = (array[0]*500) + (array[1]*100) +(array[2]*50)
end

coins = [0,0,0]
count = 0
for i in 0..a
    coins[0] = i
    for i in 0..b
        coins[1] = i
        for i in 0..c
            coins[2] = i
            count = count + 1 if x == calc(coins) 
        end
    end
end

puts count