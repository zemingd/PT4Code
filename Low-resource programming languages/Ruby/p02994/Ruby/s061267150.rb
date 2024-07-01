N, L = gets.chomp.split(' ').map(&:to_i)
def main
  taste = (L..L + N - 1).to_a
  remove_num = taste.map(&:abs).min
  (0...taste.length).each do |i|
    next unless taste[i].abs == remove_num

    taste.delete_at(i)
    print taste.sum
    return
  end
end

main
