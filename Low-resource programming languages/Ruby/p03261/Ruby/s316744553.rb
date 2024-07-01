N = gets.to_i
w = N.times.map{gets.chomp}

if w.uniq.length != w.length
    puts 'No'
end

(0..(N-2)).each do |i|
    if w[i][-1] != w[i+1][0]
        puts 'No'
        exit
    end
end
puts 'Yes'
