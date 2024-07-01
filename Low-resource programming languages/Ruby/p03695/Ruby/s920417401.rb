_ = gets.to_i # 素直にnにしたら./Main.rb:1: warning: assigned but unused variable - nって言われるんだけど、なぜか8つ中5つはACになる。意味不明
arr = gets.chomp.split.map(&:to_i)
collection = Array.new(8, 0)
over = 0
arr.each do |a|
  c = a/400
  if c >= 8
    over += 1
  else
    if collection[c].zero?
      collection[c] = 1
    end
  end
end
minimum = collection.inject(:+) # collection.sum atcoderはrubyを見限ってるのでsumのないバージョンを使っている
maximum = [8, minimum+over].min
puts "#{minimum} #{maximum}"