# Coloring Colorfully
S = gets.chomp.to_s
ansfblack = 0
ansfwhite = 0
if S.length == 1
    puts ansfblack
else
    for i in 0..S.length-1 do #最初白
        if i % 2 == 0 #偶数check
            if S[i] == "0" 
                ansfwhite = ansfwhite + 1
            end
        elsif i % 2 == 1 #奇数check
            if S[i] == "1"
                ansfwhite = ansfwhite + 1
            end
        end
    end
    for i in 0..S.length-1 do #最初黒
        if i % 2 == 0 #偶数check
            if S[i] == "1"
                ansfblack = ansfblack + 1
            end
        elsif i % 2 == 1 #奇数check
            if S[i] == "0"
                ansfblack = ansfblack + 1
            end 
        end
    end
end

if ansfblack <= ansfwhite && S != "0" 
    puts ansfblack
elsif ansfblack >= ansfwhite && S != "0" 
    puts ansfwhite
end