a,b,c,d = gets.chomp.split.map(&:to_i)
alice = (a..b).to_a
bob = (c..d).to_a
cnt = alice.count{|i| bob.include?(i) }
puts cnt == 0 ? cnt : cnt -1
