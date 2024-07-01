require 'pp'

_ = gets.chomp!.to_i
a_n = gets.chomp!.split(" ").map(&:to_i)
KIND = 8

g = a_n.group_by {|x|
    if x < 400
        'gray'
    elsif x < 800
        'brown'
    elsif x < 1200
        'green'
    elsif x < 1600
        'lightblue'
    elsif x < 2000
        'blue'
    elsif x < 2400
        'yellow'
    elsif x < 2800
        'orange'
    elsif x < 3200
        'red'
    else
        'other'
    end
}

k = 0

if g['other']
    k = g['other'].length
    min = [1, g.length - 1].max
    max = g.length - 1 + k
else
    min = g.length
    max = g.length
end

puts "#{min} #{max}"
