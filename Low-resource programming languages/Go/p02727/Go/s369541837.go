package main

import (
  "bufio"
  "fmt"
  "os"
  "sort"
  "strconv"
)

var s = bufio.NewScanner(os.Stdin)

func getInt() int {
  s.Scan()
  i, _ := strconv.Atoi(s.Text())
  return i
}

func main() {
  s.Split(bufio.ScanWords)
  x := getInt()
  y := getInt()
  a := getInt()
  b := getInt()
  c := getInt()
  var p []int
  var q []int
  var r []int
  var s []int
  for i := 0; i < a; i++ {
    p = append(p, getInt())
  }
  for i := 0; i < b; i++ {
    q = append(q, getInt())
  }
  for i := 0; i < c; i++ {
    r = append(r, getInt())
  }
  sort.Sort(sort.Reverse(sort.IntSlice(p)))
  sort.Sort(sort.Reverse(sort.IntSlice(q)))
  sort.Sort(sort.Reverse(sort.IntSlice(r)))
  s = append(p[0:x], q[0:y]...)
  s = append(s, r...)
  sort.Sort(sort.Reverse(sort.IntSlice(s)))
  sum := 0
  for i := 0; i < x + y; i++ {
    sum += s[i]
  }
  fmt.Println(sum)
}
