def ascan; gets.split.map(&:to_i); end

ans = 0
a = 0
b = 0
gets.chomp.chars.each do |c|
    a += 1 if c == '0'
    b += 1 if c == '1'
end

p [a,b].min*2