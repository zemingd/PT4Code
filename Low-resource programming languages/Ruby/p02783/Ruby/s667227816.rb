h,a = gets.split(" ")
h = h.to_i
a = a.to_i
if h % a == 0
    puts h/a
else
    puts (h/a)+1
end