# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
#
require "bigdecimal"
a, b, c = gets.chomp.split
if BigDecimal(a).sqrt(1000) + BigDecimal(b).sqrt(1000) < BigDecimal(c).sqrt(1000)
  puts 'Yes'
else
  puts 'No'
end
