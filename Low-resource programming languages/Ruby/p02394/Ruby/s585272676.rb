def check(w, h, x, y, r)
    if x < r
        return "No"
    end
    if y < r
        return "No"
    end
    if x > w - r
        return "No"
    end
    if y > h - r
        return "No"
    end
end

w, h, x, y, r = gets.split.map &:to_i
puts check(w, h, x, y, r)

