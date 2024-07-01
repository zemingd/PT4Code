require 'pp'
require 'set'

n = gets.chomp!.to_i
works = { 
    # limit => total_time
}
limits = SortedSet.new
n.times do |i|
    time, limit = gets.chomp!.split(" ").map(&:to_i)
    works[limit] = (works[limit] || 0) + time
    limits << limit
end

#pp works
#pp limits

now = 0
success = true
limits.each do |limit|
    time = works[limit]
    now += time
    if now > limit
        success = false
        break
    end
    #puts now
end

puts success ? "Yes" : "No"
