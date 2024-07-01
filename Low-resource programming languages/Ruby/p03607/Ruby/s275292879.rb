class Abc073c
  def self.count_numbers
    counter = Hash.new(0.freeze)
    $stdin.gets.chomp.to_i.times do
      num = $stdin.gets.chomp
      counter[num] += 1
    end
    counter.values.select(&:odd?).length
  end
end

print Abc073c.count_numbers
