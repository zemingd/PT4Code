n, q = gets.chomp.split.map(&:to_i)
s = gets.chomp

table = []
0.upto(s.length - 2){|x| table[x + 1] = 1 if s[x, 2] == "AC"}

cum = 0
0.upto(s.length - 1){|pos|
    table[pos] = (table[pos].nil?) ? cum : cum + 1
    cum = table[pos]
}

q.times{
    l, r = gets.chomp.split.map(&:to_i)
    puts table[r - 1] - table[l - 1]
}