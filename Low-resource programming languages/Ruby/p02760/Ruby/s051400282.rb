a = Array.new
3.times do
    a_row = gets.chomp.split
    a_row.length.times do |i|
        a_row[i] = a_row[i].to_i
    end
    a << a_row
end

n = gets.to_i
b = Array.new
n.times do
    input_b = gets.to_i
    b << input_b
end

3.times do |i|
    3.times do |j|
        9.times do |k|
            if a[i][j] == b[k]
                a[i][j] = 0
            end
        end
    end
end

result = false

if a[0][0] == 0 && a[1][0] == 0 && a[2][0] == 0
    result = true
end

if a[0][1] == 0 && a[1][1] == 0 && a[2][1] == 0
    result = true
end

if a[0][2] == 0 && a[1][2] == 0 && a[2][2] == 0
    result = true
end

if a[0][0] == 0 && a[0][1] == 0 && a[0][2] == 0
    result = true
end

if a[1][0] == 0 && a[1][1] == 0 && a[1][2] == 0
    result = true
end

if a[2][0] == 0 && a[2][1] == 0 && a[2][2] == 0
    result = true
end

if a[0][0] == 0 && a[1][1] == 0 && a[2][2] == 0
    result = true
end

if a[0][2] == 0 && a[1][1] == 0 && a[2][0] == 0
    result = true
end

if result
    puts "Yes"
else
    puts "No"
end