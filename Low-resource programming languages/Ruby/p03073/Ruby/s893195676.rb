require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

slist = gets_nsp_list

b = ""
count = 0
slist.each do |s|
  if b == ""
    b = s
    next
  else
    if b == s
      b = s == "0" ? "1" : "0"
      count += 1
    else
      b = s
    end
  end
end

puts count