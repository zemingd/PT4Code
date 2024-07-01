require 'prime'
n = gets.to_i
a = gets.split.map(&:to_i).sort
sum = 0
prev = nil
until a.empty?
  t = a.pop
  next if prev == t
  if t == a.last
    prev = t
    next
  end
  if Prime.prime?(t)
    sum += 1
    next
  end

  flg = true
  a.each do |ai|
    if t % ai == 0
      flg = false
      break
    end
  end
  sum += 1 if flg
  prev = t
end
puts sum
