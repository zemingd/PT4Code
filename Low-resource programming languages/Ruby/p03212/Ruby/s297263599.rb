#!/usr/bin/ruby
#encoding: utf-8

$n = gets.to_i
$ans = 0

# mが七五三数になっていて、n以下かどうか
def check(m)
  flg3 = false
  flg5 = false
  flg7 = false

  mstr = m.to_s
  (0..mstr.size-1).each do |i|
    if mstr[i] == '3'
      flg3 = true
    elsif mstr[i] == '5'
      flg5 = true
    elsif mstr[i] == '7'
      flg7 = true 
    end
  end

  return (flg3 && flg5 && flg7 && (m <= $n)) 
end

def dfs(m)
  $ans += 1 if check(m) == true 
  if m <= 1000000000
    dfs(10*m + 3) 
    dfs(10*m + 5) 
    dfs(10*m + 7) 
  end
end

dfs(0)
puts $ans

