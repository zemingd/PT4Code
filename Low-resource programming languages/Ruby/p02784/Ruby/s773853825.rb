#アライさんの必殺技は殺人タックルなのだ！！ パークの危機なのだ！！
H,N = gets.strip.split.map(&:to_i)
num = gets.strip.split.map(&:to_i)
if H <= num.sum then
  puts "Yes"
else
  puts "No"
end