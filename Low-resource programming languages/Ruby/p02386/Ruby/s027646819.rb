class Dice
    @faces = nil

    def initialize arr
        @faces = arr
    end

    def top
        @faces[0]
    end

    def rotate news
        f = @faces.dup
        case news
        when "N"
            @faces = [f[1], f[5], f[2], f[3], f[0], f[4]]
        when "E"
            @faces = [f[3], f[1], f[0], f[5], f[4], f[2]]
        when "W"
            @faces = [f[2], f[1], f[5], f[0], f[4], f[3]]
        when "S"
            @faces = [f[4], f[0], f[2], f[3], f[5], f[1]]
        end
    end

    def right top, front
        "SWSWS".each_char{|c|
            break if @faces[0] == front
            rotate c
        }
        rotate "S"
        "WWW".each_char{|c|
            break if @faces[0] == top
            rotate c
        }
        @faces[2]
    end

    def same? faces2
        return true if @faces == faces2
        "WWWWSWWWWSWWWWSWWWWSWSWWWWSSWWW".each_char{|c|
            rotate c
            return true if @faces == faces2
        }
        return false
    end
end

lines = []
n = gets.to_i
n.times{lines << gets.chomp.split}

differ = true
for i in 0..n-2
    for j in i+1..n-1
        if Dice.new(lines[i]).same?(lines[j])
            differ = false
            break
        end
    end
end
puts differ ? "Yes" : "No"