while line = gets
  a,b =line.chomp.split(" ").map(&:to_i);
  array =gets.chomp.split(" ").map(&:to_i);

  index = 0
  while true
    now = (a + index).to_s

    flg = true
    (now.length).times do|i|
      flg = false if array.any?{|c| c.to_s == now[i]}
    end
    if flg
      puts now
      break;
    end
    index += 1;
  end

end

