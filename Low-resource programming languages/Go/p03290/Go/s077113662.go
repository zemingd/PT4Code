package main
import (
  "fmt"
)
func main() {
  var d, g int
  fmt.Scan(&d, &g)
  ps := make([]int, d)
  cs := make([]int, d)
  for i := 0; i < d; i++ {
    fmt.Scan(&ps[i], &cs[i])
  }
  result := 1000
  for i := 0; i < 1<<uint(d); i++ {
    solvedCnt := 0
    score := 0
    maxNotSolvedIndex := 10
    for j := 0; j < d; j++ {
      isAllSolved := i>>uint(j)&1 == 1
      if !isAllSolved {
        maxNotSolvedIndex = j
        continue
      }
      solvedCnt += ps[j]
      score += 100*(j+1)*ps[j] + cs[j]
    }
    if g <= score {
      if solvedCnt < result {
        result = solvedCnt
      }
      continue
    }
    if maxNotSolvedIndex == 10 {
      continue
    }
    for k := 1; k < ps[maxNotSolvedIndex]; k++ {
      score += 100*(maxNotSolvedIndex+1)
      solvedCnt++
      if g <= score {
        if solvedCnt < result {
          result = solvedCnt
        }
        break
      }
    }
  }
  fmt.Println(result)
}