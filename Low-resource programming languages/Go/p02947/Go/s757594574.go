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
  
  m := map[string]uint64{}
  
  for i := 0; i < N; i++ {
    var s string
    if sc.Scan() {
      s = sc.Text()
    }
    
    arr := strings.Split(s, "")
    sort.Strings(arr)
    str := strings.Join(arr, "")
    
    m[str] = m[str] + 1
  }
  
  var cnt uint64
  for _, v := range m {
    for i := v-1; i > 0; i-- {
      cnt += i
    }
  }
  
  fmt.Println(cnt)
}