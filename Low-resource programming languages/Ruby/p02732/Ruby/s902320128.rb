#ENV[Z = 'RUBY_THREAD_VM_STACK_SIZE'] || exec( { Z => '50000000' },'ruby',$0)
# readlines.map(&:chomp!).map { |e| e.split.map(&:to_i) }
# gets.split.map(&:to_i)
n = gets.to_i
array = gets.split.map(&:to_i)

class Integer
  def factorial
    (1..self).inject(1,:*)
  end
end

hash = {}
array.each do |e|
  if hash[e]
    hash[e] += 1
  else
    hash[e] = 1
  end
end

no_hide_ans = {}
hash.each do |key, value|
  no_hide_ans[key] = value.factorial / ((value - 2).factorial * 2)
end

sum = no_hide_ans.values.inject(&:+)
memo = {}
n.times do |index|
  hide = array[index]

  if memo[hide]
    puts memo[hide]
    next
  end
  ans = sum - (no_hide_ans[hide] - ((hash[hide] - 1).factorial / ((hash[hide] - 1 - 2).factorial * 2)))
  memo[hide] = ans
  puts ans
end
