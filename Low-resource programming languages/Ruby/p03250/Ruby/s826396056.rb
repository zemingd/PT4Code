abc = gets.split.map(&:to_i)
p abc.permutation(3).inject(0){|max, (a, b, c)| max = max < 10 * a + b + c ? 10 * a + b + c : max}