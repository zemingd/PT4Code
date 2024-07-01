y = {}
(:a..:z).each do |i|
    y[i] = 0
end
loop do
x = gets
if x == nil
    break
end
x.gsub!(/[^a-zA-Z]/,"").downcase.split(//)
x.each do |i|
    y[:"#{i}"] += 1
end
end
y.each do |k,v|
    puts "#{k} : #{v}"
end