H, W = gets.split.map(&:to_i)
S = H.times.map { gets.chomp.chars }

H.times do |h|
  W.times do |w|
    next if S[h][w] == '.'
    next if h - 1 >= 0 && S[h - 1][w] == '#'
    next if h + 1 < H  && S[h + 1][w] == '#'
    next if w - 1 >= 0 && S[h][w - 1] == '#'
    next if w + 1 < W  && S[h][w + 1] == '#'

    puts 'No'
    exit
  end
end
puts 'Yes'