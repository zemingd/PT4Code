package main
import (
  // "bufio"
  // "os"
  // "strconv"
  // "strings"
  "fmt"
  // "math"
  // "sort"
)

// 行単位で読み込む場合
// var sc = bufio.NewScanner(os.Stdin)

func main() {
  var N int
  fmt.Scan(&N)
  var list []int

  for i := 0; i < N; i++ {
    var num int
    fmt.Scan(&num)
    list = append(list, num)
  }

  fmt.Println(len(distinctNum(list)))
}

// 配列中の重複要素を削除（数値）
func distinctNum(array []int) []int {
  m := map[int]bool{}
  newArray := []int{}
  for _, e := range array {
    if !m[e] {
      m[e] = true;
      newArray = append(newArray, e)
    }
  }
  return newArray
}