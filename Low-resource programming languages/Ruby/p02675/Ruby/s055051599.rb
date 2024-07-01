require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

N = gets_nsp_list.last

hon = %w(2 4 5 7 9)
pon = %w(0 1 6 8)
bon = %w(3)

if hon.include?(N)
  puts "hon"
elsif pon.include?(N)
  puts "pon"
elsif bon.include?(N)
  puts "bon"
end