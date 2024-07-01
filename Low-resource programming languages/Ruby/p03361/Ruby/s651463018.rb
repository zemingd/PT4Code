def checkContinuous(line, memo, count, w)
    1.upto(w-1) do |i|
        if line[i] === "#" && line[i-1] === "#" then
            memo[count][i] = 1
            memo[count][i-1] = 1
        end
    end
end

def main(h, w)
    s = []
    memo = Array.new(h).map{Array.new(w,0)}
    count = 0
    h.times do
        line = gets.chomp.split("")
        s << line
        checkContinuous(line, memo, count, w)
        count += 1
    end
    s = s.transpose
    memo = memo.transpose
    count = 0
    s.each do |arr|
        checkContinuous(arr, memo, count, w)
        arr.each_with_index do |item, index|
            if item === "#" && memo[count][index] === 0 then
                print "No"
                exit
            end
        end 
        count += 1
    end
    print "Yes"
end

h, w = gets.chomp.split(" ").map(&:to_i)
if w===1 then
    if h === 1 then
        gets
        puts "No"
        exit
    end
    c = []
    memo = Array.new(h, 0)
    h.times do
        c << gets.chomp.to_s
    end
    (1...h).each do |i|
        if c[i] == "#" && c[i-1] == "#" then
            memo[i] = 1
            memo[i-1] = 1
        end
    end
    c.each_with_index do |item, index|
        if item === "#" && memo[index] === 0 then
            print "No"
            exit
        end
    end
    print "Yes"
    exit
end
main(h, w)