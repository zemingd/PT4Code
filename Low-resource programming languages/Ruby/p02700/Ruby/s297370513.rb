# Your code here!
line = gets.split(' ').map(&:to_i)

takahashi_hp = line[0]
takahashi_ap = line[1]
aoki_hp = line[2]
aoki_ap = line[3]

takahashi_turn = (aoki_hp/takahashi_ap.to_f).ceil
aoki_turn = (takahashi_hp/aoki_ap.to_f).ceil

if takahashi_turn <= aoki_turn
    print "Yes"
else
    print "No"
end