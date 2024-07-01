whn = gets.chomp.split
w = whn[0].to_i
h = whn[1].to_i
n = whn[2].to_i

xya_a = []
n.times do
    xya = gets.chomp.split
    xya.length.times do |i|
        xya[i] = xya[i].to_i
    end
    xya_a << xya
end

bottom_left = [0, 0]
top_right = [w, h]

n.times do |i|
    case xya_a[i][2]
    when 1
        bottom_left[0] = xya_a[i][0] if bottom_left[0] < xya_a[i][0]
    when 2
        top_right[0] = xya_a[i][0] if top_right[0] > xya_a[i][0]
    when 3
        bottom_left[1] = xya_a[i][1] if bottom_left[1] < xya_a[i][1]
    when 4
        top_right[1] = xya_a[i][1] if top_right[1] > xya_a[i][1]
    end
end

white = (top_right[0] - bottom_left[0]) * (top_right[1] - bottom_left[1])
puts white >= 0 ? white : 0