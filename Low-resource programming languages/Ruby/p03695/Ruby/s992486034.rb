_ = gets
rate = Hash.new(0)
gets.split.map!{|x| x.to_i / 400}.each {|c| rate[c] += 1}

ans = count = 0
rate.each do |key,value|
    if key <= 7
        ans += 1
    else
        count += value
    end
end

puts "#{ans} #{ans + count >= 7 ? 7 : ans + count}"