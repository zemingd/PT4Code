a,b,c,d=gets.split.map(&:to_i)
loop do
  c-=b
  break puts 'Yes' if c<=0
  a-=d
  break puts 'No' if a<=0
end
