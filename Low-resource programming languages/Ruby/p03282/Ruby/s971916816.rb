Proc.new{|s,k|puts s.chars.take(k.to_i).find{|c|c!='1'}||'1'}.call *$<
