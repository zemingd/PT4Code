n = gets.to_i
s = []
n.times do
    s << gets.chomp
end

["AC", "WA", "TLE", "RE"].each do |str|
    puts str + " × " + s.count(str).to_s
end
