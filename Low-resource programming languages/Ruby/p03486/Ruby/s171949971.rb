s = gets.chomp.chars
t = gets.chomp.chars

dictionary = ('a'..'z').each_with_object({}).with_index(1) { |(char, h), i| h[char] = i }

s_dash = s.map { |char| dictionary[char] }.sort.join
t_dash = t.map { |char| dictionary[char] }.sort.reverse.join

max = [s.size, t.size].max

s_dash << '0' * (max - s.size)
t_dash << '0' * (max - t.size)

puts s_dash < t_dash ? 'Yes' : 'No'
