require 'complex'

n, d = gets.chomp.split(' ').map{|v| v.to_i}

points = []
n.times {
    points.push(gets.chomp.split(' ').map{|v| v.to_i})
}

count = 0

(n-1).times {|i|
    first_points = points[i]
    ((i+1)...n).each {|j|
        second_points = points[j]
        #p '---------'
        #p first_points
        #p second_points

        sum = 0
        d.times {|k|
            sum += (first_points[k] - second_points[k]) ** 2
        }

        #    p Math.sqrt(sum)
        count += 1 if Math.sqrt(sum).to_s =~ /^[0-9]+(.0+)?$/
    }
}

puts count
