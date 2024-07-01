debug = false
string = gets.chomp # 文字列として受け取る

def get_omit(str)
  (str.length-1).times do |i|
    pair = str[i..(i+1)]
    if pair == "01" || pair == "10"
      return str.sub(pair, "")
      break
    end
  end
  return nil
end
puts string if debug
count = 0
while true
  string = get_omit(string)
  break if string.nil?
  puts string if debug
  count += 2
end
puts "" if debug
puts count
