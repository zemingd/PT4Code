hw = gets.split(' ').map(&:to_i)

h = hw[0]
w = hw[1]

h_move = (w/2.0).ceil
h_move2 = ((w-1)/2.0).ceil


if h == 1 || w == 1 then
    print "1"
elsif h % 2 == 0 then
    total = (h_move+h_move2) * (h/2.0).floor
    print total.to_s
else
    total = (h_move+h_move2) * (h/2.0).floor
    total += h_move
    print total.to_s
end
