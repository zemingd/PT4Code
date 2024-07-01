money = gets.split(' ')[0]
dlike = gets.split(' ').map(&:to_i)

def check_money(money, dlike)
    dlike.each{ |d|
        if money.include?(d.to_s)
            return true
        end
    }
    return false
end
pay = 0
while check_money(money, dlike) do
    pay = money.to_i + 1;
    money = pay.to_s
end
puts money