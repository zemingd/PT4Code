a = gets()
b = 10 ** 5
a.to_i .times do
    b = b * 1.05
end
puts b.ceil(-3)
