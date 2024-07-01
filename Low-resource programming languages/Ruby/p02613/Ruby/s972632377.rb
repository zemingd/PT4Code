# ------------------------------------------------------------
# THIS IS METADATA FOR ATCODER_TOOLS
# BE CAREFULL WHEN YOU CHANGE THE VALUE
# 
# METADATA::START
# test-1
# input: "6\nAC\nTLE\nAC\nAC\nWA\nTLE\n"
# output: "AC x 3\nWA x 1\nTLE x 2\nRE x 0\n"
# test-2
# input: "10\nAC\nAC\nAC\nAC\nAC\nAC\nAC\nAC\nAC\nAC\n"
# output: "AC x 10\nWA x 0\nTLE x 0\nRE x 0\n"
# MODE: TEST
# METADATA::FINISH
# 
# you can add your original test case 
# you can select MODE from NONE, DEBUG, RUN, TEST
# problem_url: https://atcoder.jp/contests/abc173/tasks/abc173_b
# submission_url: https://atcoder.jp/contests/abc173/submissions/me
# -------------------------------------------------------------

# snippets
n = gets.to_i
# arr = gets.split(' ').map(&:to_i)
arr = []
n.times do |i|
  arr[i] = gets.chomp
end

print "AC x "
puts arr.count{|r| r == 'AC'}
print "WA x "
puts arr.count{|r| r == 'WA'}
print "TLE x "
puts arr.count{|r| r == 'TLE'}
print "RE x "
puts arr.count{|r| r == 'RE'}
