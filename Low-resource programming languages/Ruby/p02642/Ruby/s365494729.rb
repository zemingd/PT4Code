n = gets.to_i
a = gets.split.map(&:to_i)
a = a.sort
ans = 0
if a.uniq.length == 1
    puts 0
    exit
end
loop do
    break if a.empty?
    k = a.shift
    ans += 1
    ac = Marshal.load(Marshal.dump(a))
    a.each_with_index do |aa, i|
        if aa % k == 0
            ac.delete(aa)
        end
    end
    a = ac
end
puts ans