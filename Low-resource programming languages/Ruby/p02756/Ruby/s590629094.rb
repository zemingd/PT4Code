# frozen_string_literal: true

# ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
s = gets.chomp!
q = gets.to_i
array = readlines.map(&:chomp!).map(&:split)

count = 0
sentou = []
matubi = []
array.each do |command|
  case command.first
  when '1'
    count += 1
  when '2'
    if count.even?
      if command[1] == '1'
        sentou.push command[2]
      else
        matubi.push command[2]
      end
    else
      if command[1] == '1'
        matubi.push command[2]
      else
        sentou.push command[2]
      end
    end
  end
end

if count.odd?
  s.reverse!
  puts matubi.join + s + sentou.join
else
  puts sentou.join.reverse! + s + matubi.join.reverse!
end

