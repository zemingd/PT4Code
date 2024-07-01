class Dice
    attr_reader :number
     
    def initialize(input)
        # top bottom N E S W
        @number = input
 
        @dice_number = [1, 6, 5, 3, 2, 4]
    end
 
    def rotate(command)
        swap_number = []
 
        case command
        when 'N'
            swap_number = [2, 1, 4]
            swap(swap_number)
        when 'E'
            swap_number = [3, 1, 5]
            swap(swap_number)
        when 'S'
            swap_number = [4, 1, 2]
            swap(swap_number)
        when 'W'
            swap_number = [5, 1, 3]
            swap(swap_number)
        end
    end
 
    def rotate_horizontal
        tmp = @dice_number[2]
        (2..4).each {|i| @dice_number[i] = @dice_number[i+1]}
        @dice_number[5] = tmp
    end
 
    def swap(number)
        @dice_number = @dice_nubmer
    end
 
    def numbers
        number_return = []
        (0..5).each do |e|
            number_return << @number[@dice_number[e]-1]
        end
        number_return
    end
end
 
def rotateToTop(dice, position)
    case position
    when 0 then
    when 1 then
        dice.rotate('N')
    when 2 then
        dice.rotate('W')
    when 3 then
        dice.rotate('E')
    when 4 then
        dice.rotate('S')
    when 5 then
        2.times { dice.rotate('S') }
    end
end
 
n = gets.to_i
 
dice = []
n.times do |i|
    inputs = gets.split.map(&:to_i)
    dice << Dice.new(inputs)
end
 
difference_flag = 0
n.times do |i|
    dice1 = Marshal.load(Marshal.dump(dice[i].clone))
    (i..(n-1)).each do |j|
        next if i == j
 
        match_flag = false
        (0..5).each do |e|
            dice2 = Marshal.load(Marshal.dump(dice[j].clone))
 
            rotateToTop(dice2, e)
 
            num_of_rotation = 0
            while (num_of_rotation+=1) <= 4 do
                if dice1.numbers == dice2.numbers then
                    match_flag = true
                    break
                end
         
                dice2.rotate_horizontal
            end
     
            if match_flag then
                    difference_flag += 1
                    break
            end
        end
    end
end
 
if difference_flag == 0 then
    puts "Yes"
else
    puts "No"
end