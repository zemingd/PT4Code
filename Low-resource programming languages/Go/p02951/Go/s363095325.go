package main
 
import (
  "bufio"
  "fmt"
  "os"
  "strings"
   "strconv"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func main() {
  if sc.Scan() {
    s := strings.Split(sc.Text(), " ")
    a, _ := strconv.Atoi(s[0])
    b, _ := strconv.Atoi(s[1])
    c, _ := strconv.Atoi(s[2])
    fmt.Println(c - (a - b)a)
  }
}