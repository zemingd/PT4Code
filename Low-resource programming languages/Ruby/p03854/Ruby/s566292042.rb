# frozen_string_literal: true

s = gets
answer = s =~ %r{\A(dream|dreamer|erase|eraser)+\z} ? "YES" : "NO"
puts answer
