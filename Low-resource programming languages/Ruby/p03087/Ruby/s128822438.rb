str1 = ["A", "C", "G", "T"]

n, q = gets.chomp.split.map(&:to_i)
s = gets.chomp
for x in 1..q
  a, b = gets.chomp.split.map(&:to_i)
  l = a
  r = b
  s2 = s[l - 1..r - 1]
  s3 = s2.gsub("AC", "!")
  result = 0
  s3.each_char { |ch|
    if ch == "!"
      result = result + 1
    end
  }
  puts result
end
