package main
import (
  "fmt"
  "os"
  "bufio"
  "strconv"
  "strings"
)

func main() {
  var n, r int
  
  stdin := bufio.NewScanner(os.Stdin)
  stdin.Scan()
  input := stdin.Text()
  nr := strings.Fields(input)
  n, _ = strconv.Atoi(nr[0])
  r, _ = strconv.Atoi(nr[1])
    
  var rate int
  if n<10 {
    rate = r + 100 * (10 - n)
  } else {
    rate = r
  }
  
  fmt.Println(rate)
}