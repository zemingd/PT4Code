A,B,C=$<.read.split.map(&:to_i)

1.upto(100) do |i|
    if (B*i+C) % A == 0
        puts 'YES'
        exit 0
    end
end

puts 'NO'