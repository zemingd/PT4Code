n, m = gets.chomp.split.map(&:to_i)
cards = Hash.new(0)
gets.chomp.split.map(&:to_i).each{|x| cards[x] += 1}
m.times{
    n, v = gets.chomp.split.map(&:to_i)
    keys = cards.keys.sort
    to = keys.length - 1
    0.upto(to){|i|
        x, c = keys[i], cards[keys[i]]
        break if x >= v
        if n <= c
            cards[v] += n
            cards[x] -= n
        else
            cards[v] += c
            cards[x] -= c
        end
        n -= c
        break if n <= 0
    }
}
result = 0
cards.each{|k, v| result += k * v}
puts result