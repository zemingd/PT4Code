result = []
count = 1
n = gets.chomp.to_i
while(count <= n) do
    if(count % 3 == 0)
        result << count
    elsif(count.to_s.match(/.+3|3.+/))
        result << count
    end
    count += 1
end
puts " " + result.join(" ")
