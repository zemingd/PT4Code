STDIN.each_line do |line|
    a, b = line.split.map(&:to_i)
    puts "#{a * b} #{a+a+b+b}"
end