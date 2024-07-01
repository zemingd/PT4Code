#! /usr/bin/env ruby

input = STDIN.read.split("\n")
s = input[0]
t = input[1]

has_same_chars = t.split("").uniq.sort == s.split("").uniq.sort

dic_s = {}
dic_t = {}
has_same_stack = true;
for i in 0..(s.length - 1) do
  if dic_s.has_key?(s[i]) then
    if dic_s[s[i]] != t[i] then
      has_same_stack = false
      break
    end
  else
    dic_s[s[i]] = t[i]
  end
  if dic_t.has_key?(t[i]) then
    if dic_t[t[i]] != s[i] then
      has_same_stack = false
      break
    end
  else 
    dic_t[t[i]] = s[i]
  end
end

puts has_same_stack ? 'Yes' : 'No'

