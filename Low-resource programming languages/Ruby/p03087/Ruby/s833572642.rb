len, qs = gets.split.map(&:to_i)
a = false
s = gets.chomp
is_ac = len.times.map{|i|
    ac = 0
    if a && s[i] == 'C'
        ac = 1
    end
    a = s[i] == 'A'
    ac
}[1..-1]
sums = is_ac.inject([0]){|acc, it| acc + [acc[-1] + it]}

qs.times{|it|
    s, e = gets.split.map(&:to_i)
    puts sums[e - 1] - sums[s - 1]
}
