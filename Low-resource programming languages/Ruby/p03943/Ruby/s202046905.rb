candy = gets.split.map(&:to_i)
combinations = candy.combination(2).to_a
combinations.each do |c|
  sum = c[0] + c[1]
  @output = "No"
  if sum == candy[0] || sum == candy[1] || sum == candy[2]
    @output = "No"
  end
end
puts @output