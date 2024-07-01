# frozen_string_literal: true

n = gets.chomp.to_i
w = []
n.times do
  w.push gets.chomp
end
if w.size != w.uniq.size
  puts 'No'
else
  (n - 2).times do |i|
    if w[i][-1] != w[i + 1][0]
      puts 'No'
      exit 0
    end
  end
  puts 'Yes'
end
