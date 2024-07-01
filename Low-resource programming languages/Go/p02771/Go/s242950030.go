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
  kawaisou := false
  n := make([]int, 3, 3)
  for i := 0; i < 3; i++ {
    n[i] = next()
  }
  if n[0] == n[1] && n[1] != n[2] {
    kawaisou = true
  } else if n[0] == n[2] && n[1] != n[2] {
    kawaisou = true
  } else if n[1] == n[2] && n[0] != n[1] {
    kawaisou = true
  }

  if kawaisou {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}