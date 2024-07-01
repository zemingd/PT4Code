package main
import (
  "bufio"
  "os"
  "strconv"
  "strings"
  "fmt"
  "math"
  "sort"
)

// 行単位で読み込む場合
var sc = bufio.NewScanner(os.Stdin)

func main() {
  nums, a, b, c := nextLine(), nextLine(), nextLine(), nextLine()
  X, _ := strconv.Atoi(strings.Fields(nums)[0])
  Y, _ := strconv.Atoi(strings.Fields(nums)[1])
  // Z := strings.Fields(nums)[2]
  K, _ := strconv.Atoi(strings.Fields(nums)[3])
  As := arrayAtoi(strings.Fields(a))
  Bs := arrayAtoi(strings.Fields(b))
  Cs := arrayAtoi(strings.Fields(c))

  ABs := []int{}
  for _, A := range As {
    for _, B := range Bs {
      ABs = append(ABs, A + B)
    }
  }
  sort.Ints(ABs)
  ABs = reverseNum(ABs)
  AB3000 := ABs[:int(math.Min(float64(X * Y), 3000))]

  ABCs := []int{}
  for _, C := range Cs {
    for _, AB := range AB3000 {
      ABCs = append(ABCs, C + AB)
    }
  }
  sort.Ints(ABCs)
  ABCs = reverseNum(ABCs)
  
  for i:=0; i<K; i++ {
    fmt.Println(ABCs[i])
  }
}

// 行を読む
func nextLine() string {
  sc.Scan()
  return sc.Text()
}

// 配列中の文字列を全て数値に変換
func arrayAtoi(array []string) []int {
  retarray := []int{}
  for _, v := range array {
    num, e := strconv.Atoi(v)
    if e != nil {
      panic(e)
    }
    retarray = append(retarray, num)
  }
  return retarray
}

// 配列を逆転する
func reverseNum(array []int) []int {
  for i, j := 0, len(array) - 1; i < j; i, j = i + 1, j - 1 {
    array[i], array[j] = array[j], array[i]
  }
  return array
}