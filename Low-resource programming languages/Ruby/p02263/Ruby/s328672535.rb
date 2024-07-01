s = gets.split

stk = []

s.each{|t|
    case t
    when '+'
        snd = stk.pop
        fst = stk.pop
        stk.push(fst + snd)
    when '-'
        snd = stk.pop
        fst = stk.pop
        stk.push(fst - snd)
    when '*'
        snd = stk.pop
        fst = stk.pop
        stk.push(fst * snd)
    else
        stk.push(t.to_i)
    end
}

p stk[-1]
