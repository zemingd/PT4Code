loop {
x = gets.split.map(&:to_i)
 
 puts x.sort.join(" ")

break if x == [0, 0]
}
