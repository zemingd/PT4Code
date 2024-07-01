N,K = gets.chomp.split.map(&:to_i)
As = gets.chomp.split.map(&:to_i)

Bs = []
As.uniq.each{ |x|
    tmp_arr = []
    Bs << As.select{|y| y == x}
}

Bs.sort!{ |a, b|
    b.length <=> a.length
}

ans = 0
(Bs.length - K).times{
    ans += Bs.pop.length
}

puts ans
