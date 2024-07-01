n = gets.chop.to_i
A = gets.chop.split.map(&:to_i)

h = Hash.new(0)
A.sort!.reverse!


A.each do |i|
  h[i] += 1
end

h = h.to_a.sort_by!{ |x| [x[0],x[1]]}.reverse!


first_num = 0
second_num = 0

h.each do |a, b|
  if b >= 4 and first_num == 0
    first_num, second_num = a
    break
  end

  if b >=4 and first_num != 0 and second_num == 0
    second_num = a
    break
  end

  if b >= 2 and first_num != 0
    second_num = a
    break
  end

  if b >= 2 and first_num == 0
    first_num = a
  end
end

p first_num * second_num




