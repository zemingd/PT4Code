H, W = gets.split.map(&:to_i)
S = H.times.map { gets.chomp.chars }

def check(h, w)
  return false if h < 0 || h >= H
  return false if w < 0 || w >= W

  S[h][w] == '#'
end

H.times do |h|
  W.times do |w|
    next if S[h][w] == '.'
    next if check(h - 1, w) || check(h + 1, w) || check(h, w + 1) || check(h, w - 1)

    puts 'No'
    exit
  end
end
puts 'Yes'