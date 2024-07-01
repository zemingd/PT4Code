package main 

import (
  "fmt"
)

func main() {
  var H, W int
  fmt.Scanf("%d %d\n", &H, &W)
  tmpCnt := (1 + (H - 1) / 2) * W
  if (H - 1) % 2 == 0 {
    tmpCnt -= W / 2
  }
  
  fmt.Println( tmpCnt )
}