N, M = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i).uniq

require "prime"

pr = {}
A.each do |a|
  if a % 2 == 1
    puts 0
    exit
  end
  (a/2).prime_division.each do |e, n|
    # 素因数の2のべき乗項は全てのaで共通である必要がある
    if e == 2 && pr[2] && pr[2] != n
      puts 0
      exit
    end
    pr[e] ||= n
    pr[e] = n if n > pr[e]
  end
end

mul = 1
pr.each do |e, n|
  mul *= e**n
end

m = M / mul
if m % 2 == 0
  puts m / 2
else
  puts m / 2 + 1
end
