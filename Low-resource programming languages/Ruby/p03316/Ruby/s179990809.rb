def main
  str = gets.chomp
  sn = 0
  str.each_char do |s|
    sn += s.to_i
  end
  if str.to_i % sn == 0
    puts 'Yes'
  else
    puts 'No'
  end
end

main