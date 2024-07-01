package main
import (
   "fmt"
   "os"
   "bufio"
   "strconv"
)
var sc = bufio.NewScanner(os.Stdin)

func main() {
  sc.Split(bufio.ScanWords)
  first := nextInt()
  second := nextInt()
  third := nextInt()
  if first < second && second < third {
    fmt.Println("Yes");
  }else {
    fmt.Println("No");
  }
}


func nextInt() (int) {
    sc.Scan()
    v, e := strconv.Atoi(sc.Text())
    if e != nil { panic(e) }
    return v
}
