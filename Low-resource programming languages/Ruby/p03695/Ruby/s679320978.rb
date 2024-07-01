_ = gets
rate = Hash.new(0)
gets.split.map!{|x| x.to_i / 400}.each {|c| rate[c] += 1}

ans = count = 0
rate.each do |key,value|
    if key <= 8
        ans += 1
    else
        count += value
    end
end

min = ans == 0 ? 1 : ans
max = ans + count >= 8 ? 8 : ans + count
puts "#{min} #{max}"