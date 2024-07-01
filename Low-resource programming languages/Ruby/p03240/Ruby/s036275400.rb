n = gets.chomp.to_i
x = []
y = []
h = []

n.times do |i|
  x[i], y[i], h[i] = gets.chomp.split.map(&:to_i)
end

101.times do |xx|
  101.times do |yy|
    highest = nil
    flag = false
    n.times do |i|
      if h[i] != 0
        highest = h[i] + (x[i] - xx).abs + (y[i] - yy)
        break
      end
    end
    n.times do |i|
      if h[i] != [highest - (x[i] - xx).abs - (y[i] - yy).abs, 0].max
        flag = true
        break
      end
    end
    next if flag
    puts "#{xx} #{yy} #{highest}"
    exit
  end
end
