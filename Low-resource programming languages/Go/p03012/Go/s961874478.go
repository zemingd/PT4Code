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

  sum := 0
  sumSeq := [] int{}
  for i:=0; i<n; i++ {
    welem, _ := strconv.Atoi(ws[i])
    sum = sum + welem
    sumSeq = append(sumSeq, sum)
  }
  limit := sum/2.0
  //fmt.Println(sumSeq)
  mem := 0
  for i:=0; i<n; i++ {
    diff := limit - sumSeq[i]
    //fmt.Println(mem,diff)
    if diff < 0 {
      if mem > -diff {
        mem = -diff
      }
      break
    }
    mem = diff
  }
  fmt.Println(mem*2)
}


