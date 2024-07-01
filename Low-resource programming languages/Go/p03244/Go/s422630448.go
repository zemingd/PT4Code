package main
import (
  "fmt"
)

func find(numMap map[int]int) (int, int, int, int) {
  fKey, fCnt, sKey, sCnt := 0, 0, 0, 0
  for key, cnt := range numMap {
    if fCnt < cnt {
      sKey = fKey
      sCnt = fCnt
      fKey = key
      fCnt = cnt
    } else if sCnt < cnt {
      sKey = key
      sCnt = cnt
    }
  }
  return fKey, fCnt, sKey, sCnt
}

func min(a, b int)int {
  if a < b {
    return a
  }
  return b
}

func main() {
  var n int
  fmt.Scan(&n)
  vs := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&vs[i])
  }
  evenMap := make(map[int]int)
  oddMap := make(map[int]int)
  for i, v := range vs {
    if i%2 == 0 {
      evenMap[v]++
    } else {
      oddMap[v]++
    }
  }
  
  evenFKey, evenFCnt, _, evenSCnt := find(evenMap)
  oddFKey, oddFCnt, _, oddSCnt := find(oddMap)
  
  if evenFKey != oddFKey {
    fmt.Println(n-evenFCnt-oddFCnt)
  } else {
    fmt.Println(min(n-evenSCnt-oddFCnt, n-evenFCnt-oddSCnt))
  }
  
}