h, w = gets.split.map(&:to_i)
pixels = h.times.map { gets.chomp }

valid = true

h.times do |i|
  break unless valid

  w.times do |j|
    next if pixels[i][j] == "."

    next if pixels[i][j - 1] == "#"
    next if pixels[i][j + 1] == "#"
    next if pixels[i - 1][j] == "#"
    next if pixels[i + 1][j] == "#"

    valid = false
    break
  end
end

puts valid ? "Yes" : "No"
