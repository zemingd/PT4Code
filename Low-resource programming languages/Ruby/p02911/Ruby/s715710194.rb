n,k,q  = gets.split.map(&:to_i)


threshold = q - k
scores = Array.new(n, 0)

q.times { scores[gets.to_i - 1] += 1 }

scores.each do |i|
    if i > threshold
        puts "Yes"
    else
        puts "No"
    end
end

