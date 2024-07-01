ary = gets.split(" ").map(&:to_i)

d = ary.last
dab = (ary[1] - ary[0]).abs
dbc = (ary[2] - ary[1]).abs
if dab > d ; dbc > d
    puts "No"
elsif d >= dab and d >= dbc
    puts "Yes"
end