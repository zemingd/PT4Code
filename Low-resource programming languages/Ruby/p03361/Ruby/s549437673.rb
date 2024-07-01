h, w = gets.split.map(&:to_i)
pixels = h.times.map { gets.chomp }

valid = true

h.times do |i|
  break unless valid

  w.times do |j|
    next if pixels[i][j] == "."

    l = !(j - 1 >= 0) || pixels[i][j - 1] == "."
    r = !(j + 1 < w) || pixels[i][j + 1] == "."
    u = !(i - 1 >= 0) || pixels[i - 1][j] == "."
    d = !(i + 1 < h) || pixels[i + 1][j] == "."

    if [l, r, u, d].all?(&:itself)
      valid = false
      break
    end
  end
end

puts valid ? "Yes" : "No"
