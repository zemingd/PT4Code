N=gets.chomp.split(' ').map{|n| n.to_i}.pop
arr = []
N.times{|i|
    a=gets.chomp.split(' ').map{|n| n.to_i}.pop
    if a > N then
        puts '-1'
        exit
    end
    arr.push(a)
}
i = 0
j = 0
m = []
while true do
    if i == 1 then
        puts j
        exit
    end
    if m.include?(i) then
        puts "-1"
        exit
    end
    m.push(i)
    i = arr[i] - 1
    j += 1
end