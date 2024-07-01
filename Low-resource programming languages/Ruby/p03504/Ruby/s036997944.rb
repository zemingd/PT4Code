# Your code here!
MAX_TIME = 100000

n, c = gets.chomp.split(' ').map(&:to_i)
programs = Array.new(c){[]}
n.times do 
    s, t, c = gets.chomp.split(' ').map(&:to_i)
    programs[c - 1] << [s, t]
end
programs.each(&:sort!)
array = Array.new(MAX_TIME * 2 + 2){0}

programs.each do |list|
    unless list.empty?
        array[list.reduce(0) {|acc, (a, b)|
            if a != acc 
                array[a * 2 - 1] += 1
                if acc != 0
                    array[acc * 2 + 1] -= 1
                end
            end
            b
        } * 2 + 1] -= 1
    end
end
for i in 1 ... array.size
    array[i] += array[i - 1]
end
p array.max
