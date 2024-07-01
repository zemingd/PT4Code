package main
 
import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)
 
var sc = bufio.NewScanner(os.Stdin)

func next() int {
  sc.Scan()
  i, _ := strconv.Atoi(sc.Text())
  return i
}

func main() {
  sc.Split(bufio.ScanWords)
  n := next()
  tako := make([]int, n, n)
  takoSum := 0
  ans := 0

  for i := 0; i < n; i++ {
    tako[i] = next()
    takoSum += tako[i]
  }
  
  for i := 0; i < n; i++ {
    takoSum -= tako[i]
    ans += takoSum * tako[i]
  }
  fmt.Println(ans)
}