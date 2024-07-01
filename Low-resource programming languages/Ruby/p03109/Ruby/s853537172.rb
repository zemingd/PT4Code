s = gets.chomp.split.map(&:to_i)
 
str = ['yyyy/mm/dd']

S = ['2019/04/30']

if str << [S]
  puts 'Heisei'
elsif [S] << [s]
  puts 'TBD'
end 