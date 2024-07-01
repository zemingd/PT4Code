
def solv(arr)
  change = true
  while change do
    change = false

    line_checked = arr.map { |line| line.all?{ |c| c == '.' } ? nil : line }.compact
    change = true if arr.size != line_checked.size

    transed = line_checked.transpose
    line_checked = transed.map { |line| line.all?{ |c| c == '.' } ? nil : line }.compact
    change = true if transed.size != line_checked.size

    arr = line_checked
  end
  arr.map { |line| line.join('')}
end

=begin
str = ["##.#",
       "....",
       "##.#",
       ".#.#"]

str = str.map{ |l| l.split('')}
puts solv(str)
exit 1
=end

cd = gets.chomp.split(' ').map(&:to_i)

str = []
cd[0].times { str << gets.chomp.split('') }

puts solv(str)


