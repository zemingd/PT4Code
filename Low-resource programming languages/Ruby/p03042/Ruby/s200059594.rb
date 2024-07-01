#!/usr/bin/ruby
# encoding: utf-8

# 長さ4の文字列
S = gets.chomp

Su = S[0,2].to_i # Sのうえ
Ss = S[2,2].to_i # Sのした

if Su == 0 or Ss == 0 then
  if Su <= 12 and Su >= 1 then
    puts "MMYY"
    exit
  end
  if Ss <= 12 and Ss >= 1 then
    puts "YYMM"
    exit
  end
  
  puts "NA"
  exit
end

if Su > 12 and Ss > 12 then
  puts "NA"
  exit
end

if Su > 12 and Ss <= 12 then
  puts "YYMM"
  exit
end

if Su <= 12 and Ss > 12 then
  puts "MMYY"
  exit
end

if Su <= 12 and Ss <= 12 then
  puts "AMBIGUOUS"
  exit
end
