  # 標準入力,小文字にしてアルファベットだけ取り出す
  str = gets(chomp:true).downcase.scan(/[a-z]/)

  # a~zのハッシュ作成
  alp = {}
  ("a".."z").each do | a |
    alp[a] = 0
  end
  
  # a~zのハッシュに標準入力の文字数を加算
  str.each do | a |
    alp[a] += 1
  end

  # 出力
  alp.each do |key,value|
    puts "#{key} : #{value}"
  end

