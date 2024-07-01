a, b = gets.split.map(&:to_i)

puts case
when a < b ; "a < b"
when a > b ; "a > b"
when a == b; "a == b"
end