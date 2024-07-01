package main
import(
  "bufio"
  "fmt"
  "os"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
  sc.Scan()
  return sc.Text()
}

func main() {
  sc.Split(bufio.ScanWords)
  n, _ := strconv.Atoi(read())
  input := map[int]int{}
  memo := map[int]int{}
  res := []int{}
  null := true
  for i := 0; i < n; i++ {
    input[i], _ = strconv.Atoi(read())
    memo[i] = 0
    null = null && input[i] == 0
  }
  if(null) {
    fmt.Printf("%d\n", 0)
    return
  }
  for i := n - 1; i >= 0; i -- {
    if(input[i] != memo[i]) {
      res = append(res, i)
      for j := 0; j < i; j ++ {
        if(i % j == 0){ memo[j] = (memo[j] + 1) % 2 }
      }
    }
  }
  fmt.Printf("%d\n", len(res))
  for i := 0; i < len(res); i++ {
    fmt.Printf("%d", res[i])
    if(i != len(res) - 1) {
      fmt.Print(" ")
    }
  }
  fmt.Print("\n")
}