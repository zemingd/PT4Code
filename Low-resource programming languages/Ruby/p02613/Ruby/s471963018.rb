n = gets.to_i
s = []
n.times { |i|
    s.append(gets.chomp.to_s)
}
puts 'AC x '+ s.count('AC').to_s
puts 'WA x '+ s.count('WA').to_s
puts 'TLE x '+ s.count('TLE').to_s
puts 'RE x '+ s.count('RE').to_s