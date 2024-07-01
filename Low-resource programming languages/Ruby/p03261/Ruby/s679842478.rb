N = gets.to_i
ws = N.times.map{gets.chomp}
 
if ws.uniq.length != ws.length
    puts 'No'
    exit
end
 
(N-1).times do |i|
    if ws[i][-1] != ws[i+1][0]
        puts 'No'
        exit
    end
end
 
puts 'Yes'