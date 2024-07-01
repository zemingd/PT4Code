#ラインの中で入力した数字を足し算するゼロの時プログラム中止

loop {
    x = gets.chomp
    break if x == "0"
    puts x.split("").map(&:to_i).inject(:&+)
  }
