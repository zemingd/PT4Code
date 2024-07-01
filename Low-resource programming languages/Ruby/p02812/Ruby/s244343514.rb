N = gets.to_i
S = (gets.to_s).chomp
cnt = 0

if (N >= 3 && N <= 50) && (S =~ /[A-Z]{2,}/)
  word = Array.new(S.length - 1)
  (0..S.length - 1).each do |no|
    word[no] = S.slice(no, 1)
  end

  (0..S.length - 2).each do |no|
    if word[no] == "A"
      if word[no + 1] == "B"
        if word[no + 2] == "C"
          cnt += 1
        end
      end
    end
  end
  puts cnt.to_s
end
