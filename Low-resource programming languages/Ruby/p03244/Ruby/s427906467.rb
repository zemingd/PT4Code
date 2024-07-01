# frozen_string_literal: true

_ = gets.to_i
numbers = gets.split.map(&:to_i)

h1 = {}
h2 = {}
numbers.each_slice(2) {|pair|
  a = pair[0]
  b = pair[1]

  h1[a] ||= 0
  h2[b] ||= 0

  h1[a] = h1[a] + 1
  h2[b] = h2[b] + 1
}

answer =
  if h1.size == 1 && h2.size == 1
    if h1.keys[0] == h2.keys[0]
      h1.values[0]
    else
      0
    end
  else
    a = h1.size == 1 ? 0 : h1.values.sort[0...-1].inject(:+)
    b = h2.size == 1 ? 0 : h2.values.sort[0...-1].inject(:+)
    a + b
  end

puts answer
