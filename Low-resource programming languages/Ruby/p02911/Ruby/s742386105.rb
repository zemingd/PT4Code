n, k, q = gets.split.map(&:to_i)
norm = q - k + 1
count = {}
count.default = 0
q.times{|i|
    count[gets.to_i] += 1
}

(1..n).each{|i|
    puts count[i] >= norm ? 'Yes' : 'No'
}
