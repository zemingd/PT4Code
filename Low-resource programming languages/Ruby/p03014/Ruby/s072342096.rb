h, w = gets.split.map(&:to_i)
s = []
h.times {|i|
    s[i] = gets.chomp.char
}

light = []
h.times {|i|
    light[i] = Array.new(w, 0)
}

h.times {|i|
    count = 0
    w.times {|j|
        if s[i][j] == '.' then
            light[i][j] += count
            count += 1
        else
            count = 0
        end
    }
}

h.times {|i|
    count = 0
    w.times {|j|
        if s[i][w - j - 1] == '.' then
            light[i][w - j - 1] += count
            count += 1
        else
            count = 0
        end
    }
}

w.times {|j|
    count = 0
    h.times {|i|
        if s[i][j] == '.' then
            light[i][j] += count
            count += 1
        else
            count = 0
        end
    }
}

w.times {|j|
    count = 0
    h.times {|i|
        if s[h - i - 1][j] == '.' then
            light[h - i - 1][j] += count
            count += 1
        else
            count = 0
        end
    }
}

max = 0
h.times {|i|
    w.times {|j|
        if max < light[i][j] then
            max = light[i][j]
        end
    }
}

puts(max + 1)
