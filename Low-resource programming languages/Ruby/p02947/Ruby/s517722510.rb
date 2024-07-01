n = gets.to_i
i = 0
words = []
while i < n do
  input = gets.to_s.chomp
  if input.length == 10
    word = input.split("")
    word_count = Hash.new(0)
    word.each do |e|
      word_count[e] += 1
    end
    words << word_count.sort_by{|key, val| key}
  end
  i += 1
end
if n >= 2 || n <= 100000
  a = 0
  b = 1
  match_count = 0
  while a < n do
    while b < n + 1 do
      match_count += 1 if words[a] == words[b]
      b += 1
    end
    a += 1
    b = a + 1
  end
else
  match_count = 0
end
puts match_count