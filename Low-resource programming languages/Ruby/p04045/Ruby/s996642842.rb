money = gets.split(' ')[0]
dlike = gets.split(' ').map(&:to_i)
pay = ''

def inc_ch(ch, dlike)
    while true do 
        if dlike.include?(ch)
            ch = ch + 1
        else
            return ch.to_s
        end
    end
    return ch.to_s
end


money.chars { |ch|
    pay = pay + inc_ch(ch.to_i, dlike)
}

puts pay
