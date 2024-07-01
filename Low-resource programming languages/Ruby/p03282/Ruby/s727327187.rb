s = gets.chomp
k = gets.chomp.split(' ').map(&:to_i)[0]
if s.length == 1
  puts s[0]
else
  s.split('').each do |c|
    if c != '1'
      puts c
      exit
    end
  end
  puts '1'
end