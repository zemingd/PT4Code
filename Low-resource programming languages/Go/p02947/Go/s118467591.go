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
  
  // var ss []string
  
  m := map[string][]string{}
  
  for i := 0; i < N; i++ {
    var s string
    if sc.Scan() {
      s = sc.Text()
    }
    
    arr := strings.Split(s, "")
    sort.Strings(arr)
    
    // ss = append(ss, strings.Join(arr, ""))
    str := strings.Join(arr, "")
    key := str[:3]
    m[key] = append(m[key], str)
  }
  
  var cnt uint64
  for _, strArr := range m {
    for i, s := range strArr {
      for _, t := range strArr[i+1:] {
        if s == t {
          cnt++
        }
      }
    }
  }
  
  fmt.Println(cnt)
}