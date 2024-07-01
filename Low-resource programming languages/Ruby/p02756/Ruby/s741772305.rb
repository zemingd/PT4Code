str = gets.chomp
be_str = ""
af_str = ""
count = gets.to_i
queries = []
is_reverse = false
count.times do
  substr = gets
  if substr.include?(" ")
    t,f,c = substr.chomp.split(" ")
    # f = 1のとき、strの先頭にcを追加する
    # f = 2のとき、strの末尾にcを追加する
    if (f.to_s == "1" && !is_reverse) ||(f.to_s == "2" && is_reverse)
      be_str = c + be_str
    else
      af_str = af_str + c
    end
  else
    # t = 1のとき strの前後を反転する
    is_reverse = !is_reverse
  end
end
str = be_str + str + af_str
# 最後に反転する
if is_reverse
  str = str.reverse
end
print str
