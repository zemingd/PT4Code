# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
#
require "bigdecimal/math"
a, b, c = gets.chomp.split

if BigMath::sqrt(BigDecimal(a), 10) + BigMath::sqrt(BigDecimal(b), 10) < BigMath::sqrt(BigDecimal(c), 10)
  puts 'Yes'
else
  puts 'No'
end
