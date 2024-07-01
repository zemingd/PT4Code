def main()
  n, k = gets.chomp.strip.split(' ').map(&:to_i)
  inputA = gets.chomp.strip
  a = inputA.split(' ').map(&:to_i)
  f_val = []
  for i in 0..k do
    f_val << a.inject(0) { |sum, x| sum += i^x }
  end
  
  puts "#{f_val.max}"
end
main