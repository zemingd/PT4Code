def main
  s = gets.chomp
  i = 0
  j = 0
  cnt = 0
  max = 0
  until s[j].nil?
    if ['A', 'T', 'G', 'C'].include? s[j]
      cnt += 1
      max = cnt if cnt > max
      j += 1
    else
      i = j + 1
      j = j + 1
      cnt = 0
    end
  end
  puts max
end

main

