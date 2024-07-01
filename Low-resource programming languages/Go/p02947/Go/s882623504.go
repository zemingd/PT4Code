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
    m[arr[0]] = append(m[arr[0]], strings.Join(arr, ""))
  }
  
  var cnt uint64
  for key, strArr := range m {
    for i := 0; i < len(strArr); i++ {
      s := strArr[i]
      for j := i+1; j < len(strArr); j++ {
        t := strArr[j]
        if s == t {
          cnt++
        }
      }
    }
  }
  
  fmt.Println(cnt)
}