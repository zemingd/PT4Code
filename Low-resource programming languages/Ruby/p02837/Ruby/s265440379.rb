N = gets.chomp.to_i
A = []
N.times {
  a = gets.chomp.to_i
  hash_a = {}
  a.times {
    x, x_bool = gets.split.map(&:to_i)
    if x_bool == 1
      x_bool = true
    else
      x_bool = false
    end
    hash_a[x] = x_bool
  }
  A << hash_a
}
len = N
ans = 0
[false, true].repeated_permutation(len) do |bits|
  onnest = 0
  judge = true
  bits.each_with_index {|bit, i_bit|
    if bit
      A[i_bit].each do |key, value|
        covKey = key - 1
        if bits[covKey] == value
          onnest += 1
        else
          judge = false
        end
      end
    end
  }
  if judge
  ans = onnest if ans < onnest
  end
end
p ans