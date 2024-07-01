package main

import (
  "fmt"
)

func main() {
  var s string
  fmt.Scan(&s)

  fmt.Println(task(s))
}

func task(s string) string {
  var a,b int
  a = (len(s)-1)/2
  b = ((len(s)+3)/2)-1

  if s != reverse(s) {
    return "No"
  }
  if s[:a] != reverse(s[:a]) {
    return "No"
  }
  if s[b:] != reverse(s[b:]) {
    return "No"
  }
  return "Yes"
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
