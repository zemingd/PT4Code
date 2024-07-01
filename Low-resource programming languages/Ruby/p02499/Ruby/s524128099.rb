lambda {|s|
    ("a".."z").each { |c|
        printf "%s: %d\n", c, s.count(c)
    }
}.call gets