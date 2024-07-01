H, W = gets.chomp.split.map(&:to_i)
S = (0..H+1).inject([]){|a, i|
    case i
    when 0, H+1 then
        a << ("." * (W+2)).chars
    else
        a << ("."+ gets.chomp + ".").chars
    end
}

Bool = (1..H).inject(true){|bool, i|
    (1..W).each{|j|
        if S[i][j] == "#" then
            jugde = [S[i-1][j], S[i][j-1], S[i][j+1], S[i+1][j]].any?{|s| s == "#"}
            bool = jugde ? bool : false
        end
    }
    
    bool
}

puts Bool ? :Yes : :No