require 'bigdecimal'
require 'bigdecimal/util'

$n = gets.chomp.to_i
$ans=0

def dfs(s)
  return if s.size >=10
  if s.include?('3') &&  s.include?('5') &&  s.include?('7') && s.to_i <= $n
    $ans+=1
  end
  dfs(s + '3')
  dfs(s + '5')
  dfs(s + '7')
end

dfs("")

puts $ans