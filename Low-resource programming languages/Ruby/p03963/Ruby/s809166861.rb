ball,color== gets.split.map(&:to_i)

answer = color * (color - 1) ** (ball - 1)

puts answer
