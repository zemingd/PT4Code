N = gets.to_i
H = gets.chomp.split.map(&:to_i)

p (0...N).inject(0) {|sum, i|
    sum = (0..i).map{|j| H[j] <= H[i]}.all? ? sum + 1 : sum
}