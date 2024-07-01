cards = gets.split(' ').map!(&:to_i)
i = 1
max = 0
while i <= cards[0] && i <= cards[3]
    max = max + 1
    i = i + 1
end
while i <= cards[0] + cards[1] && i <= cards[3]
    i = i + 1
end
while i <= cards[0] + cards[1] + cards[2] && i <= cards[3]
    max = max - 1
    i = i + 1
end
puts max