cards = gets.chomp!.split(' ').map!(&:to_i)
# i = 1
# max = 0
# a = cards[0] + cards[1]
# while i <= cards[0] && i <= cards[3]
#     max = max + 1
#     i = i + 1
# end
# while i <= cards[0] + cards[1] && i <= cards[3]
#     i = i + 1
# end
# while i <= cards[0] + cards[1] + cards[2] && i <= cards[3]
#     max = max - 1
#     i = i + 1
# end

if cards[3] <= cards[0]
    puts cards[0]
elsif cards[3] <= cards[0] + cards[1]
    puts cards[3]
elsif cards[3] > cards[0] + cards[1]
    puts cards[0] - (cards[3] - cards[0] - cards[1])
end