package main

import (
  "fmt"
  "strings"
  "sort"
)

func main() {
  var N int
  fmt.Scanf("%d", &N)
  
  var ss []string
  for i := 0; i < N; i++ {
  	var s string
    fmt.Scanf("%s", &s)
    
    arr := strings.Split(s, "")
    sort.Strings(arr)
    
    ss = append(ss, strings.Join(arr, ""))
  }
  
  var cnt uint64
  for i := 0; i < len(ss); i++ {
    s := ss[i]
   	
    ts := ss[i+1:]
    for j := 0; j < len(ts); j++ {
      t := ts[j]
      if s == t {
      	cnt++
      }
    }
  }
  
  fmt.Println(cnt)
}