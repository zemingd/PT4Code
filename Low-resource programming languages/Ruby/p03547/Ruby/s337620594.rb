_=gets.split;s=%w(< > ==)
3.times{|i|
if eval(%W(#{_[0].to_i(16)} #{s[i]} #{_[1].to_i(16)}).join)
  puts s[i][0]
end
}