require 'pp'
require 'set'

n, m = gets.chomp!.split(' ').map(&:to_i)
prefs = {}
cities = {}
m.times do |i|
    p, y = gets.chomp!.split(' ').map(&:to_i)
    prefs[p] ||= SortedSet.new
    prefs[p] << y
    cities[y] = i
end

ans = {}
prefs.each do |pref, cs|
    cs.each_with_index do |c, rank|
        ans[cities[c]] ||= {}
        ans[cities[c]] = {
            pref: pref,
            rank: rank + 1,
        }
    end
end

m.times do |i|
    puts sprintf("%06d%06d", ans[i][:pref], ans[i][:rank])
end
