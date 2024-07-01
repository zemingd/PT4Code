package main
 
import (
	"fmt"
  "bufio"
  "os"
	"strings"
  "strconv"
)
 
var sc = bufio.NewScanner(os.Stdin)
func main() {

  var n int
  fmt.Scanf("%d", &n)

  var ws []string
  if sc.Scan() {
    wss := sc.Text()
    ws = strings.Split(wss, " ")
  }
  // fmt.Println(ws)

  w := [] int{}
  sum := 0
  sumSeq := [] int{}
  for i:=0; i<n; i++ {
    welem, _ := strconv.Atoi(ws[i])
    w = append(w, welem)
    sum = sum + welem
    sumSeq = append(sumSeq, sum)
  }
  limit := sum/2
  // fmt.Println(limit)
  // fmt.Println(sum)
  // fmt.Println(sumSeq)
  mem := 0
  for i:=0; i<n; i++ {
    if mem >= 0 && sumSeq[i] > limit {
      // fmt.Println(mem, sumSeq[i],i)
      // fmt.Println(mem, i)
      fmt.Println(i)
      break
    }
    mem = sumSeq[i]
  }
}
