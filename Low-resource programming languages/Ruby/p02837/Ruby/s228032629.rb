N = gets.to_i

cases = N.times.flat_map.with_index(1) { |_, id|
  gets.to_i.times.map {
    other, b = gets.chomp.split(' ').map(&:to_i)
    [id, other, b]
  }
}

puts 0.upto(('1'*N).to_i(2)).map {|n|
  pattern = sprintf("%0#{N}d", n.to_s(2)).chars.map(&:to_i)
  f = cases.any? do |(id, other, b)|
    pattern[id-1] == 1 && pattern[other-1] != b
  end
  pattern.select { |s| s == 1 }.size unless f
}.compact.max