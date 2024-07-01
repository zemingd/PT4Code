#require "pry-byebug"
def is_kaibun(str)
  result = true
  ary = str.split("")
  return false if str.length.even?

  if 2 < str.length
    loop do
      first = ary.shift
      last = ary.pop
      if first != last
        result = false
        break
      end
      if ary.length < 3
        break
      end
    end
  end
  result
end

S=gets.chomp
result = is_kaibun(S)
if result != true
  puts "No"
  exit
end

N = S.length
end_pos = (N - 1) / 2
s_sub = S.slice(0, end_pos)
#puts "S:#{S}, N:#{N}, end_pos:#{end_pos}, s_sub:#{s_sub}"
result = is_kaibun(s_sub)
if result != true
  #puts "2"
  puts "No"
  exit
end

start_pos = (N - 1 + 3) / 2
#puts "S:#{S}, N:#{N}, start_pos:#{start_pos}, s_sub:#{s_sub}"
s_sub = S.slice(start_pos..N)
result = is_kaibun(s_sub)
if result != true
  #puts "3"
  puts "No"
  exit
end

puts "Yes"
