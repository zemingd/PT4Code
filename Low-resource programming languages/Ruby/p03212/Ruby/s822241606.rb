$n = gets.to_i
$col = $n.to_s.length
$a = []

def find(i, num)
    if i == 0
        if num <= $n
            $a << num.to_s
        end
        return
    end
    find(i-1, num+3*10**(i-1))
    find(i-1, num+5*10**(i-1))
    find(i-1, num+7*10**(i-1))
end

(3..$col).to_a.reverse.each{|i|
    find(i, 0)
}

puts $a.select{|i| i.include?('7')&&i.include?('5')&&i.include?('3') }.count

