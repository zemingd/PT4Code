N,K = gets.chomp.split.map(&:to_i)
As = gets.chomp.split.map(&:to_i)

As.sort!
Bs = []
tmp_arr = []

As.each{ |x|
    if tmp_arr == [] || tmp_arr.last == x then
        tmp_arr << x
    else
        Bs << tmp_arr
        tmp_arr = [x]
    end
}

Bs << tmp_arr if tmp_arr != []

Bs.sort!{ |a, b|
    b.length <=> a.length
}

ans = 0
(Bs.length - K).times{
    ans += Bs.pop.length
}

puts ans
