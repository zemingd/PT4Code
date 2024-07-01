While true
H, W = gets.split.map(&:to_i)

break if (H == 0 && W ==0)

H.times do
    W.times do
        print "#"
    end
    puts ""
end
end