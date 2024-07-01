n=gets.to_i
m=Array.new(200020,0)
a=gets.split.map(&:to_i)
a.each do |j|
    if m[j] != 0
        puts "NO"
        exit(0)
    end
    m[j] += 1;
end
puts "YES"
