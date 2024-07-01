class FiveVariables
  def run
    puts 15 - gets.chomp.split(/\s/).map(&:to_i).sum
  end
end

if $0 == __FILE__
  FiveVariables.new.run
end
