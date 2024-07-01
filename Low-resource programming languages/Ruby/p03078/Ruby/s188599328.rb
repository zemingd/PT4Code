X, Y, Z, K = gets.split(' ').map(&:to_i)
score = []

a = gets.split(' ').map(&:to_i).sort
b = gets.split(' ').map(&:to_i).sort
c = gets.split(' ').map(&:to_i).sort

a.each_with_index do |a_element, a_index|
  b.each_with_index do |b_element, b_index|
    c.each_with_index do |c_element, c_index|
      next if (a_index + 1) * (b_index + 1) * (c_index + 1) <= K

      score.push(a_element + b_element + c_element)
    end
  end
end

score.sort.reverse.slice(0, K).each do |i|
  puts i
end