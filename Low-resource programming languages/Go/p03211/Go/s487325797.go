package main
import (
  // "bufio"
  // "os"
  "strconv"
  // "strings"
  "fmt"
  // "math"
  // "sort"
)

// 行単位で読み込む場合
// var sc = bufio.NewScanner(os.Stdin)

func main() {
  var S string
  fmt.Scan(&S)

  ans := 999

  for i := 0; i < len(S) - 2; i++ {
    str := S[i:i+3]
    num, _ := strconv.Atoi(str)
    num -= 753
    if num < 0 {
      num *= -1
    }
    if num < ans {
      ans = num
    }
  }

  fmt.Println(ans)

}