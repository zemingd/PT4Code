n = gets.chomp.to_i
x = []
y = []
h = []

n.times do |i|
  x[i], y[i], h[i] = gets.chomp.split.map(&:to_i)
end

101.times do |xx|
  101.times do |yy|
    arr = []
    highest = nil
    flag = false
    n.times do |i|
      if !highest
        if h[i] == 0
          arr.push(i)
          next
        else
          highest = h[i] + (x[i] - xx).abs + (y[i] - yy)
          if highest < 1
            flag = true
            break
          end
        end
      end
      if h[i] != [highest - (x[i] - xx).abs - (y[i] - yy).abs, 0].max
        flag = true
        break
      end
    end
    arr.each do |t|
      if 0 != [highest - (x[t] - xx).abs - (y[t] - yy).abs, 0].max
        flag = true
        break
      end
    end
    next if flag
    puts "#{xx} #{yy} #{highest}"
    exit
  end
end
