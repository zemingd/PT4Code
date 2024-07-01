a = gets.split(" ").map! {|i| i.to_i}
a.sort!
print a[0], " ", a[1], " ", a[2], "\n"