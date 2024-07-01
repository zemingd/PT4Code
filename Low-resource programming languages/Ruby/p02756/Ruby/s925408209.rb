# frozen_string_literal: true

# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
s = gets.chomp!
q = gets.to_i
array = readlines.map(&:chomp!).map(&:split)

array.each do |command|
  case command.first
  when '1'
    s.reverse!
  when '2'
    s = if command[1].to_i == 1
          command[2] + s
        else
          s + command[2]
        end
  end
end

puts s
