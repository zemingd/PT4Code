n, m = gets.rstrip.split(" ").map { |c| c.to_i}
a = gets.rstrip.split(" ").map {|c| c.to_i }

total = 0
a.each { |ai| total += ai }

cnt = 0
a.each do |ai|
    if ai >= total/(4*m) then
        cnt += 1
    end
end

if cnt >= m then
    puts "Yes"
else
    puts "No"
end