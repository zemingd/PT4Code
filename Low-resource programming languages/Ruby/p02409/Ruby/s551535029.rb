class Official_House
    def initialize
        @house1 = Array.new(3){Array.new(10,0)}
        @house2 = Array.new(3){Array.new(10,0)}
        @house3 = Array.new(3){Array.new(10,0)}
        @house4 = Array.new(3){Array.new(10,0)}
        @line = "####################"
    end
    
    def access(b, f, r, v)
        if b == 1 then
            @house1[f-1][r-1] += v 
        elsif b == 2 then
            @house2[f-1][r-1] += v 
        elsif b == 3 then
            @house3[f-1][r-1] += v 
        elsif b == 4
            @house4[f-1][r-1] += v 
        end
    end
    
    def display
        @house1.each do |floor|
            puts " #{floor.join(' ')}"
        end
        puts @line
        @house2.each do |floor|
            puts " #{floor.join(' ')}"
        end
        puts @line
        @house3.each do |floor|
            puts " #{floor.join(' ')}"
        end
        puts @line
        @house4.each do |floor|
            puts " #{floor.join(' ')}"
        end
    end
end

counts = gets.to_i
lines = readlines.map(&:chomp).map{|line| line.split.map(&:to_i)}
house = Official_House.new
lines.each do |line|
    b, f, r, v = line
    house.access(b, f, r, v)
end
house.display
