N = gets.to_i
a = gets.split.map(&:to_i)
Q = gets.to_i

Q.times do
    line = gets.split.map(&:to_i)
    a.map! {|x| x==line[0] ? line[1] : x} if a.include?(line[0])
    puts a.sum
end
