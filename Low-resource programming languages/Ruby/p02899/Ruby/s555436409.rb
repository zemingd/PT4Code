# frozen_string_literal: true

N = gets.to_i
students = gets.split.map(&:to_i)
ans = []
i = 0
students.each do |student|
  p = student
    ans[p - 1] = i + 1
    i += 1
end
k = 0
ans.each do |result|
 print result," "
end
