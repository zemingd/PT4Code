a = Array.new(3){gets.split}
N = gets.to_i
N.times{
    b = gets.chomp
    3.times{|row|
        3.times{|col|
            if b == a[row][col]
                a[row][col] = nil
            end
        }
    }
}
if (a[0][0] || a[0][1] || a[0][2]) &&
    (a[1][0] || a[1][1] || a[1][2]) &&
    (a[2][0] || a[2][1] || a[2][2]) &&
    (a[0][0] || a[1][0] || a[2][0]) &&
    (a[0][1] || a[1][1] || a[2][1]) &&
    (a[0][2] || a[1][2] || a[2][2]) &&
    (a[0][0] || a[1][1] || a[2][2]) &&
    (a[0][2] || a[1][1] || a[2][0])
    puts "No"
else
    puts "Yes"
end
