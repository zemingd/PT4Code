x= {}
[*'a'..'z'].each{|s| x[s]=0}
while line = gets
    line.chomp.downcase.split('').each do |s|
        x[s] += 1 if x.has_key?(s)
    end
end
x.keys.sort.each do |key|
    puts "#{key} : #{x[key]}"
end


