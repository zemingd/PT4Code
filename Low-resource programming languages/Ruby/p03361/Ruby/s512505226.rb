h, w = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }

s.each { |e| e << '.' }
s << '.' * w

1.upto(h) do |i|
  1.upto(w) do |j|
    next if s[i][j] == '.'

    if s[i][j - 1] == '.' && s[i][j + 1] == '.' &&
       s[i - 1][j] == '.' && s[i + 1][j] == '.'
      puts :No
      exit
    end
  end
end

puts :Yes