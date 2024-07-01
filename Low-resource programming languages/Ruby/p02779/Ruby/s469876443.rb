n=gets.to_i
m={}
a=gets.split.map(&:to_i)
a.each do |j|
    if m.fetch(j,0) == 1
        puts "NO"
        return 0
    end
    m.store(j,1);
end
puts "YES"
