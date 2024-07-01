h, w = gets.split.map(&:to_i)
s = Array.new(h) { Array.new(w) }
(0..h-1).each do |i|
  s[i] = gets.chomp.split("")
end

$h = h
$w = w
$s = s

def is_black?(a, b)
  unless a >= 0 && a < $h
    return false
  end

  unless b >= 0 && b < $w
    return false
  end

  if $s[a][b] == "."
     return false
  end

  true
end

answer = true
(0..h-1).each do |i|
  unless answer
    break
  end
  (0..w-1).each do |j|
    if s[i][j] == "#"
      unless is_black?(i-1,j) || is_black?(i+1, j) || is_black?(i, j-1) || is_black?(i, j+1)
        answer = false
        break
      end
    end
  end
end

puts answer ? "Yes" : "No"