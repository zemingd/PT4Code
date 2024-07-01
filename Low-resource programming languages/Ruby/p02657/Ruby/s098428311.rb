i = gets
total = gets.split.map(&:to_i).inject(:*)
total = -1 if total.to_s.length > 18
print(total)