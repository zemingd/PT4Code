h, w = gets.split.map(&:to_i)

s = []
h.times do |i|
  s[i] = gets.split('')
end

h.times do |i|
  w.times do |j|
    if s[i][j] == '#'
      result = false
      result = true if i != 0 && s[i-1][j] == '#'
      result = true if j != 0 && s[i][j-1] == '#'
      result = true if i != h-1 && s[i+1][j] == '#'
      result = true if j != w-1 && s[i][j+1] == '#'
      unless result
        puts 'No'
        exit
      end
    end
  end
end
puts 'Yes'
