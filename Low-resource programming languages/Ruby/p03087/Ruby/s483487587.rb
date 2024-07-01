n,q = gets.split(' ').map(&:to_i)
s = gets.chomp
ac_count = []
ac = []
(n-1).times do |a|
    if s[a]+s[a+1] == 'AC'
        ac_count[a] = 1
    else
        ac_count[a] = 0
    end
end
q.times do |a|
    l,r = gets.split(' ').map(&:to_i)
    ac<<ac_count[(l-1)..(r-2)].sum
end
puts ac

