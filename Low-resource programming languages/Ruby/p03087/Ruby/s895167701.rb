ar = gets.chomp.split(" ").map{|i|i = i.to_i}
n = ar[0]
q = ar[1]

s = gets.chomp!
arr = []
ac_pos_arr = []
flag=0
count=0
pos=0
now_pos=0
s.chars{|c|
    if c=="A" then
        now_pos=pos
        flag=1
    elsif c=="C" && flag==1 then
        ac_pos_arr << now_pos
        flag=0
    end
    pos+=1
}
#pp ac_pos_arr
q.times{
    arr = gets.chomp.split(" ").map{|i|i = i.to_i}
    #pp arr
    count=0
    ac_pos_arr.each{|i|
        if (arr[0]-1)<=i && i<(arr[1]-1) then
            count+=1
        elsif (arr[1]-1)<=i then
            break
        end
    }
    puts count
    count=0
}