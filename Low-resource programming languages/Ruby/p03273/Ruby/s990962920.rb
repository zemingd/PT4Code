h, w = gets.chomp.split.map(&:to_i)
arr = []
h.times{
    line = gets.chomp
    arr << line if line.count("#") != 0
}
(w-1).downto(0){|x|
    if arr.all?{|line| line[x] == "."}
        arr.each{|line| line[x, 1] = ""}
    end
}
arr.each{|line| puts line}