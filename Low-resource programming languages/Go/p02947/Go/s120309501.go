package main

import (
  "fmt"
  "strings"
  "sort"
  "bufio"
  "os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
  var N int
  fmt.Scanf("%d", &N)
  
  var ss []string
  for i := 0; i < N; i++ {
    var s string
    if sc.Scan() {
      s = sc.Text()
    }
    
    arr := strings.Split(s, "")
    sort.Strings(arr)
    
    ss = append(ss, strings.Join(arr, ""))
  }
  
  var cnt uint64
  for i, s := range ss {
   	
    for j := i+1; j < len(ss); j++ {
      t := ss[j]
      if s == t {
      	cnt++
      }
    }
  }
  
  fmt.Println(cnt)
}