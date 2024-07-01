package main
 
import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)
 
var sc = bufio.NewScanner(os.Stdin)

func  next() int {
  sc.Scan()
  i, _ := strconv.Atoi(sc.Text())
  return i
}

func main() {
  sc.Split(bufio.ScanWords)
  approved := true
  n := next()
  a := make([]int, n, n)
  for i := 0; i < n; i++ {
    a[i] = next()
    if a[i] % 2 == 0 && a[i] % 3 != 0 && a[i] % 5 != 0 {
      approved = false
      break
    }
  }

  if approved {
    fmt.Println("APPROVED")
  } else {
    fmt.Println("DENIED")
  }
}