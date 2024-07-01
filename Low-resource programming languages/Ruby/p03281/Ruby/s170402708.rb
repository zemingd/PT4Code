require 'prime'
n = gets.chomp.split(' ').map(&:to_i)[0]
c = 0
ps = Prime.each(200).to_a
for i in 3..n do
  if i.odd? && !ps.include?(i)
    s = 0
    qs = []
    Prime.prime_division(i).map { |l| qs << l[1] }
    qs.map { |q| s += q }
    s = 2**s
    qs.each do |q|
      s = s / q
    end
    puts "#{i} #{s}"
    c += 1 if s == 8
  end
end
puts c