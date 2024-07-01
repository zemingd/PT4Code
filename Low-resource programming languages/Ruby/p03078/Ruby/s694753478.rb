x, y, z, k = gets.split.map(&:to_i)
ones = gets.split.map(&:to_i).sort { |a, b| b <=> a }
twos = gets.split.map(&:to_i).sort { |a, b| b <=> a }
threes = gets.split.map(&:to_i).sort { |a, b| b <=> a }

answers = []
ones.each do |one|
  twos.each do |two|
    changed = false
    threes.each do |three|
      sum = one + two + three
      if answers.size < k || sum > answers.first
        index = answers.bsearch_index { |item| item > sum }
        index ||= -1
        answers.insert(index, sum)
        changed = true
        answers.shift if answers.size > k
      else
        break
      end
    end
  break unless changed
  end
end
answers.reverse.each { |answer| puts answer }
