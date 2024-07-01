# Your code here!
line = gets.split(' ').map(&:to_i)

takahashi_hp = line[0]
takahashi_ap = line[1]
aoki_hp = line[2]
aoki_ap = line[3]

loop{
    aoki_hp = aoki_hp - takahashi_ap
    takahashi_hp = takahashi_hp - aoki_ap
    break if (aoki_hp == 0 || takahashi_hp == 0)
}

if aoki_hp == 0
    print "Yes"
else
    print "No"
end