class Dice      
    @face = nil         
                        
    def initialize ary   
        @face = ary        
    end                     

    def top
        @face[0]
    end

    def rotate news     
        f = @face.dup
        case news
        when "N"
            @face = [f[1],f[5],f[2],f[3],f[0],f[4]]
        when "E"
            @face = [f[3],f[1],f[0],f[5],f[4],f[2]]
        when "W"
            @face = [f[2],f[1],f[5],f[0],f[4],f[3]]
        when "S"
            @face = [f[4],f[0],f[2],f[3],f[5],f[1]]
        end
    end

    def right top,front
        "SWSWS".each_char do |c|
            if @face[0] == top
                break 
            end
            rotate c
        end
        rotate "N"
        "WWW".each_char do |c|
            if @face[0] == front
                break 
            end
            rotate c
        end
    @face[2]
    end

    def same? face2
        return true if @face == face2
        "WWWWSWWWWSWWWWSWWWWSWWWWSWWW".each_char { |c|
            rotate c
            return true if @face == face2
        }
        return false
    end
end

lines = []
n = gets.to_i
n.times {lines << gets.chomp.split}

differ = true
for i in 0..n-2
    for j in i + 1..n-1
        if Dice.new(lines[i]).same?(lines[j])
            differ = false
            break
        end
    end
end
puts differ ? "Yes" : "No"
