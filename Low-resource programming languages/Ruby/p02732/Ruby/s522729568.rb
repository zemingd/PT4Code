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
n.times do |index|
  hide = array[index]
  puts sum - (no_hide_ans[hide] - ((hash[hide] - 1).factorial / ((hash[hide] - 1 - 2).factorial * 2)))
end
