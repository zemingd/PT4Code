n = STDIN.read
l = n.downcase
alpha = [*"a".."z"]
alpha.each {
    |a|
    count = l.count(a)
    puts "#{a} : #{count}"
}
