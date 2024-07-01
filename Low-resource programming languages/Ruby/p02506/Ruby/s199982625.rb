class Solver
  def initialize
    word = gets.chomp.downcase

    cnt = 0

    loop do
      text = gets.chomp

      break if text == "END_OF_TEXT"

      cnt += text.split(' ').count{|w| w.downcase == word }
    end

    puts cnt
  end
end

Solver.new