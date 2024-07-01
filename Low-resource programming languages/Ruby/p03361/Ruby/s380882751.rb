h, w = gets.chomp.split.map(&:to_i)
s = []
h.times do |i|
  s[i] = gets.chomp.split("").map(&:to_s)
end
d = [[-1, 0], [1, 0], [0, -1], [0, 1]]


h.times do |i|
  w.times do |j|
    if s[i][j] == "#"
      result = false
      d.each do |dy, dx|
        next if i + dy < 0 || i + dy >  h - 1 || j + dx < 0 || j + dx > w - 1
        if s[i + dy][j + dx] == "#"
          result = true
          break
        end
      end
      unless result
        puts "No"
        exit
      end
    end
  end
end
puts "Yes"
