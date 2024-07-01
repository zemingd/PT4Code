def gets; ARGF.gets; end

def main
  s = gets.chomp
  k = gets.chomp.to_i

  # 5000兆日後
  #     5000 0000 0000 0000
  # k
  # 100 0000 0000 0000 0000

  pos_to_find = if s.length < k
                  s.length-1
                else
                  k-1
                end

  # 最初の1以外の文字を探す
  0.upto(pos_to_find) do |i|
    if s[i] != "1"
      puts s[i]
      return
    end
  end

  puts "1"

end

if __FILE__ == $0
  main
end
