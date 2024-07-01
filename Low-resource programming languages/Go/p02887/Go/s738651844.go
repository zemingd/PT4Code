package main
 
import (
  "fmt"
  "os"
  "bufio"
  "strings"
)
 
func main() {  
  var n int
  fmt.Scan(&n)
  scanner := bufio.NewScanner(os.Stdin)
  scanner.Scan()
  stdInput := scanner.Text()
  slime := strings.Split(stdInput, "")
  
  var color string
  count := 0
  
  //前から順に隣り合う色を比較 異なる色なら1体加算
  for i := 0; i < n; i++ {
    if &color != &slime[i] {
      count++
    } else {
      continue
    }
    color = slime[i]
  }
  fmt.Println(count)
}
