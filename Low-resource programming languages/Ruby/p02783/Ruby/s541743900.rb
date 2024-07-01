H, A = gets.split.map(&:to_i)
if H <= A
        1
else
        times = H / A
        H % A !=0? times + 1 : times
end
