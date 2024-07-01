def main
  date = gets.chomp

  pre_date = date[0..1].to_i
  late_date = date[2..3].to_i
 
  # YYMM と MMYYがありうるパターン どちらも1~12
  return 'AMBIGUOUS' if 0 < pre_date && pre_date < 13 && 0 < late_date && late_date < 13
  # 前半が13以上, 後半が1~12なら YYMMパターン
  return 'YYMM' if pre_date >= 13 && ( 0 < late_date && late_date < 13)
  # 前半が1~12, 後半が13以上なら MMYYパターン
  return 'MMYY' if ( 0 < pre_date && pre_date < 13) && late_date >= 13
  
  'NA'
end

puts main