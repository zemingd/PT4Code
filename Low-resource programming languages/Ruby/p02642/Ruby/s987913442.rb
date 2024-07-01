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
    0.upto(a.size - 1) do |i|
        while a[i] % k == 0
            a.delete_at(i)
        end
        break if i + 1 >= a.size
    end
end
puts ans