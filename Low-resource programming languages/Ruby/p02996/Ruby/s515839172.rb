N=gets.strip.to_i

AB=(0..N-1).map{|i| gets.strip.split.map(&:to_i)}

AB.sort_by!{|i| i[1]}
now=0

AB.each do |i|
    now+=i[0]
    if now>i[1] then
        puts "No"
        exit
    end

end
puts 'Yes'
