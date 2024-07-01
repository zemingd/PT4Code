a = gets()
b = 10 ** 5
a.to_i .times do
    b = (b * 1.05).ceil(-3)
end
puts b

