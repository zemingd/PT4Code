WORD = gets.chomp
N = gets.chomp.to_i

module Rotate
  def rotate(n)
    first_char = self[0]
    self[0] = (first_char.ord + n % 26).chr
    self
  end
end

class String
  prepend Rotate
end

def solve(word, n)
  tmp_word = word
  tmp_word.each_char.with_index do |char, i|
    # a に変換するために消費する N (z.ord = 122)
    required_n = (122 - tmp_word[i].ord + 1) % 26

    if n >= required_n
      word[i] = 'a'
      n -= required_n
    else
      next
    end
  end

  # それでも余れば最後の文字に足す
  if (n >= 0)
    word[-1] = word[-1].rotate(n)
  end

  return word
end

puts solve(WORD, N)