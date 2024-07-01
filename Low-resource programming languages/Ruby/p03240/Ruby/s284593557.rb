n = gets.to_i
list = []
n.times {list.push(gets.split.map(&:to_i))}

101.times do |i|
    101.times do |j|
        flag = true
        h = nil
        list.each do |s|
            h = s[2] + (s[0]-i).abs + (s[1]-j).abs if h.nil?
            flag = false if h != s[2] + (s[0]-i).abs + (s[1]-j).abs
        end
        
        puts "#{i} #{j} #{h}"if flag == true
    end
end

    