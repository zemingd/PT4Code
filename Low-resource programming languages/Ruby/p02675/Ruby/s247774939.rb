require 'set'

def main
    n = gets.chomp
    if ["2","4","5","7","9"].include? n[-1]
        puts 'hon'
    elsif n[-1] == "3"
        puts 'bon'
    else
        puts 'pon'
    end
end

main

## イディオムなど
# until s.empty? do
#
## 配列のインデックス
# s[0,6] # 0番目から6文字
# s[0..6] # 0番目から6番目まで
# s[5..-1] # 5番目から最後まで
#
## 全探索
# [0, 1].repeated_permutation(n) do |combination| # 2^n の全探索
# array.combination(i) do |selected| # array から要素が i 個である部分列を全部抽出