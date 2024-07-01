# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)

a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

count = 0
(a+1).times do |i|
  (b+1).times do |j|
    (c+1).times do |k|
      sum = (i)*500 + (j)*100 + (k)*50
      count += 1 if sum == x
    end
  end
end

puts count
