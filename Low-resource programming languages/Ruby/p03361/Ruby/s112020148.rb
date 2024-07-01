H, W = gets.split.map(&:to_i)

data = []
H.times do
  data << gets.chomp
end

H.times do |i|
  W.times do |j|
    if data[i][j] == '#'
      found = false

      # up
      found = true if i != 0 && data[i - 1][j] == '#'
      # bottom
      found = true if i != H - 1 && data[i + 1][j] == '#'
      # left
      found = true if j != 0 && data[i][j - 1] == '#'
      # right
      found = true if j != W - 1 && data[i][j + 1] == '#'

      unless found
        puts 'No'
        exit
      end
    end
  end
end

puts 'Yes'