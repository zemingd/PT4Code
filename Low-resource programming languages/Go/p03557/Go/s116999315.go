package main

import (
  "fmt"
  "sort"
  "strconv"
  "strings"
  "bufio"
  "os"
  )
  
func lower_bound(ary []int, n int) int {
  size := len(ary)
  if ary[size-1] < n { return size }
  u := size
  l := 0
  for u>l {
    s := (u+l)/2
    if (ary[s] < n) { l = s+1 } else { u = s }
  }
  return l
}

func upper_bound(ary []int, n int) int {
  size := len(ary)
  if ary[size-1] <= n { return size }
  u := size
  l := 0
  for u>l {
    s := (u+l)/2
    if (ary[s] <= n) { l = s+1 } else { u = s }
  }
  return l
}

func s2i(s string) []int {
  ss := strings.Fields(s)
  tmp := make([]int, len(ss))
  for i, v := range ss {
    tmp[i], _ = strconv.Atoi(v)
  }
  return tmp
}

func readline() string {
  buff := make([]byte, 0)
  for {
    ln, isP, _ := rd.ReadLine()
    buff = append(buff, ln...)
    if !isP { break }
  }
  return string(buff)
}

//var sc = bufio.NewScanner(os.Stdin)
var rd = bufio.NewReader(os.Stdin)

func main() {
  n := 0
  fmt.Scan(&n)
  //
  a := s2i(readline())
  b := s2i(readline())
  c := s2i(readline())
  
  sort.Ints(a)
  sort.Ints(c)
  
  sum := 0
  for _, v := range b {
    sml := lower_bound(a, v)
    big := upper_bound(c, v)
    sum += sml * (n-big)
  } 
  
  fmt.Println(sum)
}