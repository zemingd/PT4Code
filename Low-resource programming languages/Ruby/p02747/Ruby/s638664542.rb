# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
s = gets.chomp!
matched = /(hi)+/.match(s)
if matched && matched[0] == s
  puts 'Yes'
else
  puts 'No'
end
