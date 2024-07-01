$N = gets.to_i
$S = gets.chomp
$ans = 0
def solve()
    l = $S.size
    (l-1).times{|i|
        tmp = 0
        a = $S[0..i]
        b = $S[(i+1)..l]
        table = {}
        a.each_char{|s|
            table[s] = 1 if table[s] == nil
        }
        b.each_char{|s|
            tmp = tmp + 1 if table[s] == 1
            table[s] = 0
        }
        $ans = [$ans,tmp].max
    }
end

solve
puts $ans
