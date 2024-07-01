WORD = gets.chomp
N = gets.chomp.to_i

def next_char(char, n = 1)
  n.times do
    case char
    when 'a'..'y'
      char = char.next
    when 'z'
      char = 'a'
    end
  end

  char
end

def solve(word, n, answer)
  # a に変換するために消費する N (z.ord = 122)
  required_n = 122 - word[0].ord + 1

  if (n >= required_n)
    solve(word[1..-1], n - required_n, answer + 'a')
  else
    # 現在の残り N で a に変換できるものを探す
    tmp_word = word
    tmp_word.each_char.with_index do |char, i|
      required_n = 122 - char.ord + 1
      if required_n != 0 && n >= required_n
        word[i] = 'a'
        n -= required_n
      end
    end

    if (n >= 0)
      word[-1] = next_char(word[-1], n)
    end

    return answer + word
  end
end

puts solve(WORD, N, "")
