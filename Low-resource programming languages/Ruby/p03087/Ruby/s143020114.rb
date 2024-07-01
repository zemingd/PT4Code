N,Q=gets.split.map(&:to_i)
S=gets.chomp
lrs=$<.read.split.map(&:to_i).each_slice(2)

ps = []
pos = 0
while pos = S.index('AC',pos)
    ps << pos+1
    pos += 1
end
ps << 10**6

lrs.each do |l,r|
    i = ps.bsearch_index {|p| l <= p}
    unless i
        puts 0
        next
    end
    j = ps.bsearch_index {|p| r < p+1}
    puts j-i
end

