package main
import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)
func main() {
  var scanner = bufio.NewScanner(os.Stdin)
  var n,s int
  var a []int
  var m []bool
  scanner.Scan()
  n,_ = strconv.Atoi(scanner.Text())
  a = make([]int,n)
  m = make([]bool,n)
  for i:=0;i<n;i++ {
    scanner.Scan()
    a[i],_ = strconv.Atoi(scanner.Text())
    a[i]--
  }
  s = 0
  for i:=0;!m[i]; {
    m[i] = true
    i = a[i]
    s++
    if i == 1 {
      fmt.Println(s)
      os.Exit(0)
    }
  }
  fmt.Println(-1)
}