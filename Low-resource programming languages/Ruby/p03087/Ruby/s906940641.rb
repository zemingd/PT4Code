n,q = gets.split(' ').map(&:to_i)
s = gets.chomp
ac_count = []
(n-1).times do |a|
    if s[a]+s[a+1] == 'AC'
        ac_count[a] = 1
    else
        ac_count[a] = 0
     end
end
# puts ac_count
q.times do |a|
    l,r = gets.split(' ').map(&:to_i)
    puts ac_count[(l-1)..(r-2)].sum
end

