s = gets.chomp
len = 0
max_len = 0
s.each_char do |c|
  if "ACGT".include?(c)
    len += 1
  else
    max_len = len if max_len < len
    len = 0
  end
end
max_len = len if max_len < len
puts max_len
