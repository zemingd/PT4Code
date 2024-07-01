N = gets.to_i
if N == 1 then
  puts 0
else
  puts ( 1..(N - 1) ).inject {|result, item| result + item } + N.modulo(1)
end