#!/usr/bin/env ruby

def rotate(dice,direction)
    case direction
    when "N"
        return [dice[1],dice[5],dice[2],dice[3],dice[0],dice[4]]
    when "E"
        return [dice[3],dice[1],dice[0],dice[5],dice[4],dice[2]]
    when "W"
        return [dice[2],dice[1],dice[5],dice[0],dice[4],dice[3]]
    when "S"
        return [dice[4],dice[0],dice[2],dice[3],dice[5],dice[1]]
    when "Z"
        return [dice[0],dice[2],dice[4],dice[1],dice[3],dice[5]]
    end
end

def changetop(dice,i)
    case i
    when 0 
        return dice
    when 1 
        return rotate(dice,"N")
    when 2
        return rotate(dice,"W")
    when 3
        return rotate(dice,"E")
    when 4
        return rotate(dice,"S")
    when 5
        return rotate(rotate(dice,"N"),"N")
    end
end

def judge(diceA,diceB)
    6.times do |index|
        tempdice = changetop(diceB,index)
        if tempdice == diceA then
            return true
            exit
        end
        3.times do 
            tempdice = rotate(tempdice,"Z")
            if tempdice == diceA then
                return true
                exit
            end
        end
    end
    return false
end

loop_number = gets.to_i
loop_number.times do
    dices << gets.split.map(&:to_i) 
end

0.upto(dices.count,2) do |index|
    if judge(dices[index][0],dices[index+1][1]) == true then
        puts "No"
        exit
    end
end
puts "Yes"
