Sixes = [0, 6, 36, 216, 1296, 7776, 46656].reverse
Nines = [0, 9, 81, 729, 6561, 59049].reverse

Draws = [0, 1, 2, 3, 4, 5, 1, 2, 3, 1, 2, 3,
         2, 3, 4, 2, 3, 4, 2, 3, 4, 3, 4, 5,
         3, 4, 5, 3, 4, 5, 4, 5, 6, 4, 5, 6, 1]


def count_draw(d)
  return Draws[d] if d <= 36

  s = Sixes.find do |i|
    i <= d
  end
  sn = count_draw(d - s) + 1

  n = Nines.find do |i|
    i <= d
  end
  nn = count_draw(d - n) + 1

  [sn, nn].min
end

def main

  # 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36
  # 1 1 1          2  2  2  1  1  1           2  2  2  1  1  1           2  2  2  1  1  1 *1
  #       1  1  1           1  1  1  2  2  2  1  1  1  2  2  2  3  3  3  2  2  2  3  3  3
  #   1 2    1  2     1  2     1  2     1  2     2  1     1  2     1  2     1  2     1  2

  #
  draw = ARGF.gets.chomp.to_i

  d = count_draw(draw)

  puts d
end

if __FILE__ == $0
  main
end
