H, A = gets.chop.split.map(&:to_i)

quo, rem = H.divmod(A)

if H <= A
  puts 1
else
  puts rem == 0 ? quo : quo + 1
end
