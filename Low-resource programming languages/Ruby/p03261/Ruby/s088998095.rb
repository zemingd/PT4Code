N = gets.to_i
W = Array.new
for i in 0..N-1
    W[i] = gets.chomp
end
a = 0
for i in 0..N-2
    if W[i].split('')[W[i].length-1] != W[i+1].split('')[0]
        a += 1
    end
end
if W.uniq != W
    a += 1
end
if a == 0
    puts 'Yes'
else
    puts 'No'
end

