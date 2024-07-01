n = gets.strip

mx = 0
count = 1
prev = ''
n.chars do |c|
    if prev == ''
        count = 1
    end
    if prev == c
        count += 1
    else
        count = 1
    end
    prev = c
    mx = [mx, count].max
end

puts mx >= 3 ? 'Yes' : 'No'