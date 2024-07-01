package main
 
import (
  "fmt"
  "os"
  "bufio"
  "strings"
  "strconv"
)
 
func main() {  
  var n int
  fmt.Scan(&n)
  scanner := bufio.NewScanner(os.Stdin)
  scanner.Scan()
  stdInput := scanner.Text()
  Str := strings.Split(stdInput, " ")
  rod := make([]int, n)
  
  for i := range rod {
    rod[i], _ = strconv.Atoi(Str[i])
  }
  
  count := 0
  for i := 0; i < n-2; i++ {
    for j := i+1; j < n-1; j++ {
      for k := j+1; k < n; k++ {
        if rod[i] < rod[j]+rod[k] && rod[j] < rod[i]+rod[k] && rod[k] < rod[i]+rod[j] {
          count++
        }
      }
    }
  }
  fmt.Println(count)
}
