debug = false

def get_omit(str)
  if str.include?("01")
    return str.sub("01", "")
  elsif str.include?("10")
    return str.sub("10", "")
  else
    return nil
  end
end

count = 0
string = gets.chomp # 文字列として受け取る
# puts string if debug
# p get_omit(string)
while true
  string = get_omit(string)
  break if string.nil?
  puts string if debug
  count += 2
end

puts "" if debug
puts count
