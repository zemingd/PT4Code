n, m = gets.split(' ').map(&:to_i)
s = []
(1..m).each {|i|
    _, *s[i] = gets.split(' ').map(&:to_i)
}
p = gets.split(' ').map(&:to_i)
p = [nil] + p #1-origin

puts [0, 1].repeated_permutation(n).count {|pattern|
    pattern = [nil] + pattern #1-origin
    (1..m).all? {|i|
        s[i].map {|j| pattern[j]}.sum % 2 == p[i]
    }
}
