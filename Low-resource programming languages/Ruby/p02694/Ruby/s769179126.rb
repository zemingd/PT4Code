# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
#


x = gets.to_i

money = 100.000

year = 0

while money < x
  year += 1
  money = money + (money * 0.01).floor
end

puts year
