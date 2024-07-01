N = gets.to_i
count = Hash.new{0}
N.times{
    s = gets.chomp
    count[s] += 1
}
max = count.max_by{|k,v|v}[1]
puts count.select{|k,v|v == max}.keys.sort
