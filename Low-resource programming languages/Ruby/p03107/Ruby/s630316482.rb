require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

slist = gets_nsp_list

puts [slist.count("0"), slist.count("1")].min * 2