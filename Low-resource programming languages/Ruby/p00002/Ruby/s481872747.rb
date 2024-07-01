def main
  answers = Array.new
  loop do
    line = gets.chomp
    break if line.size == 0
    l,r = line.split(' ').map {|x| x.to_i}
    answers.push((l + r).to_s)
  end

  answers.each do |item|
    puts item.size
  end
end

main