n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
a_rev = a.reverse

if a == a_rev
  print("#{a.size()/2}")
  exit
end

b1 = Array.new(0)
b1.fill(0,a.size()){|idx| 
  if idx % 2 == 0
    a[idx]
  else 
    a_rev[idx]
  end
  }
b2 = Array.new(0)
b2.fill(0,a.size()){|idx| 
  if idx % 2 == 0
    a_rev[idx]
  else 
    a[idx]
  end
  }

if b1 == b2
  print("#{b1/2}")
  exit
end

def longest_num_start_idx(ary)
  start_idx = 0
  end_idx = 0
  seq_num = 0
  longest_start_idx = 0
  (ary.size()-1).times do |idx|
    if ary[idx] != ary[idx+1]
      end_idx = idx
      if seq_num < end_idx - start_idx + 1
        seq_num = end_idx - start_idx + 1
        longest_start_idx = start_idx
      end
    else
      start_idx = idx
    end
  end
  if seq_num == 0
    seq_num = ary.size()
  end
  return seq_num, longest_start_idx
end



seq_1 = longest_num_start_idx(b1)
seq_2 =  longest_num_start_idx(b2)

if(seq_1[0] == b1.size() && seq_2[0] == b2.size())
  p 0
else
  p a.count{|item| item != a[seq_1[1]] && item != a[seq_2[1]]}
end