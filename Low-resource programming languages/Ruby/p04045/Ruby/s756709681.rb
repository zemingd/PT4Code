money = gets.split(' ')[0]
dlike = gets.split(' ')
pay = ''

def inc_ch(ch, dlike)
    while true do 
        if dlike.include?(ch)
            v = ch.to_i + 1
            ch = v.to_s;
        else
            return ch
        end
    end
    return ch
end


money.chars { |ch|
    pay = pay + inc_ch(ch, dlike)
}

puts pay
