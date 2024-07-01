w,h,n = gets.split.map(&:to_i)
s = [0, 0, w, h]

n.times do
    x,y,a = gets.split.map(&:to_i)

    case a
    when 1
        s[0] = x if s[0] < x
    when 2
        s[2] = x if s[2] > x
    when 3
        s[1] = y if s[1] < y
    when 4
        s[3] = y if s[3] > y
    end
end

puts s[0] >= s[2] || s[1] >= s[3] ? 0 : (s[2] - s[0]) * (s[3] - s[1])