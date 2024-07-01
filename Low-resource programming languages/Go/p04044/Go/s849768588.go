package main
import (
  "bufio"
  "fmt"
  "os"
  "sort"
)

func main() {
  solve()
}

func solve() {
  input := bufio.NewScanner(os.Stdin)
  input.Scan()
  
  var re []string
  for input.Scan() {
    re = append(re, input.Text())
  }
  sort.Strings(re)
  
  var s string
  for _, v := range re {
    s += v
  }
  fmt.Println(s)
}
  