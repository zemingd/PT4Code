s = gets.chomp.split("").sort
t = gets.chomp.split("").sort.reverse
((s <=> t) == -1) ? print("Yes") : print("No")