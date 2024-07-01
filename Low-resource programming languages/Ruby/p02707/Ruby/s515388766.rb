N = gets.to_i
As = gets.split.map(&:to_i)

# ハッシュで集計してカウントする関数
hsh = Hash.new
As.each do |word|
        count = As.rindex(word) - As.index(word) + 1
        hsh.store(word, count)
end

count = 0

hsh.each {|key, val|
  puts val.to_s+"\n"
  count += 1
}

nokori = N-count

if nokori > 0
  nokori.times do
    puts "0\n"
  end
end
