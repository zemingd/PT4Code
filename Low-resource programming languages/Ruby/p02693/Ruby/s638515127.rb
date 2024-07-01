a,b,c=`dd`.split.map(&:to_i)
(b..c).each{|i|if i%a==0
  puts 'OK'
  exit}
puts 'NG'
