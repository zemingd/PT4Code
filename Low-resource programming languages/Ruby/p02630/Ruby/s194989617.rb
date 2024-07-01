n = gets.to_i
nums = gets.chomp.split(" ").map(&:to_i).slice(0,n)
q = gets.to_i
changes = []
q.times{
    s,r = gets.chomp.split(" ").map(&:to_i).slice(0,2)
    changes.push({src:s, rep:r})
}

changes.each{|change|
    nums = nums.map {|n| (n == change[:src]) ? change[:rep] : n }
    puts nums.sum
}
