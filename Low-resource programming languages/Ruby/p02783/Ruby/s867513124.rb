h, a = gets.split.map(&:to_i)
if h%a == 0
    print h/a
else
    print (h/a).to_i + 1
end