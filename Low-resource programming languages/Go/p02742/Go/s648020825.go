package main 

import (
  "fmt"
)

func main() {
  var H, W int64
  fmt.Scanf("%d %d\n", &H, &W)
  var tmpCnt int64 = (1 + int64((H - 1) / 2)) * W
  if (H - 1) % 2 == 0 {
    tmpCnt -= int64(W / 2)
  }
  
  fmt.Println( tmpCnt )
}
