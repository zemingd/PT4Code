a =gets.to_i
i = gets.chomp.split(" ").map(&:to_i)
pos = (i.inject(:+).to_f/a).round
ans =0
i.each{|k|
    ans += (pos-k)**2
}
puts ans