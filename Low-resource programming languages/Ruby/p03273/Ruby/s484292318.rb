h,w = gets.chomp.split.map(&:to_i)
as = h.times.map{gets.chomp.chars}
as.each do |a|
    if a.all?{|i| i == "." }
        as.delete(a)
    end 
end
as = as.transpose
as.each do |a|
    if a.all?{|i| i == "." }
        as.delete(a)
    end 
end
as.transpose.each do |a|
    puts a.join 
end