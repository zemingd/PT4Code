# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
h, w = gets.split.map(&:to_i)

all = h * w
if w == 1
  puts 1
  exit
end

if h.odd? && w.odd?
  puts all / 2 + 1
else
  puts all / 2
end
