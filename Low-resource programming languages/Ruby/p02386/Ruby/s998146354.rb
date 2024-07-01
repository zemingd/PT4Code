n = gets.chomp.to_i - 1
@dice = gets.split(' ').map(&:to_i)
diceN = Array.new

def throw(a, b)
    temp = @dice[0]
    @dice[0] = @dice[a]
    @dice[a] = @dice[5]
    @dice[5] = @dice[b]
    @dice[b] = temp
end

def check(dice)
    3.times do
        throw(4, 1)
        break if dice[1] == @dice[0]
        throw(2, 3)
        break if dice[1] == @dice[0]
    end
    return false if dice[1] != @dice[0]
    throw(4, 1)
    4.times do
        throw(2, 3)
        return true if dice == @dice
    end
    false
end

count = 0;

n.times do
    diceN = gets.split(' ').map(&:to_i)
end

n.times do |i|
    check(diceN[i]) ? break : count += 1
end

puts count == n ? 'Yes' : 'No'