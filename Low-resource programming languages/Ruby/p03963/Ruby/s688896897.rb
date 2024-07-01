# frozen_string_literal: true

n, k = gets.split(' ').map!(&:to_i)

# 最初は k 通り、次以降は 前の色以外の k -1 通りの可能性がある
puts k * (k - 1)**(n - 1)
