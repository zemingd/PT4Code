n, k  = STDIN.gets.split(" ").map do |s|
    s.to_i
end

l = STDIN.gets.split(" ").map do |s|
    s.to_i
end

sorted = l.sort do |a,b|
    b <=> a
end

STDOUT.puts sorted[0..k-1].inject(:+)
