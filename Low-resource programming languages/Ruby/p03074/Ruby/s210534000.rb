N, K = gets.chop.split.map(&:to_i)
S = gets.to_s.chomp
ans = 10000000

# if can generate 11..11 with length can be generate string s with K times operation, return true
#p task_possible?("1010101",2, 4)
#p task_possible?("1010101",2, 5)
#p task_possible?("1010101",2, 6)
#p task_possible?("1010101",2, 7)
#p "----"
#p task_possible?("0",2, 0)
#p task_possible?("0",2, 1)
#p task_possible?("0",2, 2)
#p "----"
#p task_possible?("1000",2, 0)
#p task_possible?("1000",2, 1)
#p task_possible?("1000",2, 2)
#p task_possible?("1000",2, 3)
#p task_possible?("1000",2, 4)
def task_possible?(s, k, length)
    ret = false
    slide_window(s,length).each do |fragment|
        if can_transform?(fragment, k) then
            ret = true
        end
    end
    return ret
end


#("10111", 3) -> [101, 011, 111]
#("1011", 2) -> [10, 01, 11]
def slide_window(s, i)
    ret = []
    0.upto(s.length-i) do |j|
        ret.push(s.slice(j..j+i-1))
    end
    return ret
end

# if given string can be changed into 111...1 with k times operation, return True
# (10101, 1) -> False
# (10100, 2) -> True
def can_transform?(s, k)
    if count_zero_lump(s) <= k then
        return true
    else
        return false
    end
end

# count 0 lump
# (00100) -> 2
# (0) -> 1
# (1) -> 0
# (11001) -> 1
def count_zero_lump(s)
    ret = 0
    state = false
    s.chars.each do |c|
        if c=="0" and state==false then
            ret = ret + 1
            state = true
        elsif c=="1" then
            state = false
        end
    end
    return ret
end

y = 0
min = 0
max = 100000
mid = ""
# binary search max length
while true do
    mid = (min + max) / 2
    #p mid
    if task_possible?(S, K, mid) then
        if min==mid then
            break
        end
        min = mid
    else
        if max==mid then
            break
        end
        max = mid
    end
end
p mid