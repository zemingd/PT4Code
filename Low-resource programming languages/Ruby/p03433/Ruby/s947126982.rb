    _num = gets.chomp.to_i
    cards = gets.chomp.split.map(&:to_i).sort.reverse
    a = []
    b = []
    while !cards.empty?
        a.push(cards.shift)
        break if cards.empty?
        b.push(cards.shift)
    end
    puts(a.sum - b.sum)