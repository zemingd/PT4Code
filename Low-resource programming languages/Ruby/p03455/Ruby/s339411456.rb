    # 整数の入力
    a,b = gets.chomp.split(" ").map(&:to_i);

    # 結果の出力
    print((a % 2 == 1) && (b % 2 == 1) ? "Odd" : "Even")