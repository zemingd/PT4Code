N, K = gets.chomp.split(' ').map(&:to_i)

puts 1.0 if N >= K

splits = Rational("1/#{N}")

puts 1.upto(N).map { |n|
  times = 0
  num = n
  while true
    num *= 2
    times += 1
    break times if num >= K
  end
  splits * (1/2r ** times)
}.reduce(:+).to_f