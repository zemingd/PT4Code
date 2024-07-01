a, b, c, d = $stdin.gets.chomp.split('').map(&:to_i)

answers = []
answers << "#{a}+#{b}+#{c}+#{d}"
answers << "#{a}+#{b}+#{c}-#{d}"
answers << "#{a}+#{b}-#{c}+#{d}"
answers << "#{a}+#{b}-#{c}-#{d}"
answers << "#{a}-#{b}+#{c}+#{d}"
answers << "#{a}-#{b}+#{c}-#{d}"
answers << "#{a}-#{b}-#{c}+#{d}"
answers << "#{a}-#{b}-#{c}-#{d}"

answers.each do |answer|
  if eval(answer) == 7
    puts answer + "=#{eval(answer)}"
    exit
  end
end
