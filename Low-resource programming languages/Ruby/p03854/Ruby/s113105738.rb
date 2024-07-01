S = gets.chomp.reverse
words = ["dream","dreamer","erase","eraser"].map(&:reverse)

def checker(words)
  dev = false
  words.map do |w|
    s = S[0..w.size - 1]
    if s == w
      s = S[w.size..-1]
      words.map do |w|
        if s == w
          dev = true
        end
      end
    end
  end
  return dev
end

puts checker(words) ? "YES" : "NO"
