loop {
x = gets.split.map(&:to_i)
 break if x == [0, 0]
 puts x.sort.join(" ")
}
