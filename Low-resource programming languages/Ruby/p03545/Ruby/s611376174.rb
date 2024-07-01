S = gets.chomp

ANS = []
def insert_pm(s, i)
  (ANS << s; return) if i == 0
  ['+', '-'].each{|o|
    wk = s[0, i] + o + s[i..-1]
    insert_pm(wk, i-1)
  }
end

insert_pm(S, 3)

ANS.each{|ans|
  if eval(ans) == 7 then
    puts ans + '=7'
    break
  end
}
