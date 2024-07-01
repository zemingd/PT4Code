array = gets.chomp.split(" ").map(&:to_i)

count_5 = array.count(5)
count_7 = array.count(7)

count_5 == 2 && count_7 == 1 ? print("YES") : print("NO")