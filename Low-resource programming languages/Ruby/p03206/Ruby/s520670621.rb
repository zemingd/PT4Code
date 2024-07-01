def aa
    d = gets.chomp.to_i
    puts ('Christmas ' + 'Eve '*(25-d))[0..-2] # 末尾の空白を除去
end

aa