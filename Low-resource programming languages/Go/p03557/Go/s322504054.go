package main

import (
  "fmt"
  "sort"
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

func main() {
  n := 0
  fmt.Scan(&n)
  a := make([]int, n)
  b := make([]int, n)
  c := make([]int, n)
  for i:=0; i < n; i++ { fmt.Scan(&a[i]) }
  for i:=0; i < n; i++ { fmt.Scan(&b[i]) }
  for i:=0; i < n; i++ { fmt.Scan(&c[i]) }
  
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