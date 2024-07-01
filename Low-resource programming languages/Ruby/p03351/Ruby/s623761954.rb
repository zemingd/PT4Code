ary = gets.split(" ").map(&:to_i)

d = ary.last
dab = ary[1] - ary[0]
dbc = ary[2] - ary[1]
if dab > d or dbc > d
    puts "No"
elsif dab =< d and dbc =< d
    puts "Yes"
end