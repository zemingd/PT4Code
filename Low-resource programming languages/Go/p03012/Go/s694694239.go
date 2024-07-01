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

  var sum float64
  sumSeq := [] float64{}
  for i:=0; i<n; i++ {
    welem, _ := strconv.ParseFloat(ws[i],64)
    sum = sum + welem
    sumSeq = append(sumSeq, sum)
  }
  sum_half := sum/2

  // fmt.Println(sumSeq)
  var diff_prev float64
  var diff float64
  var result float64
  for i:=0; i<n; i++ {
    diff = sum_half - sumSeq[i]
    // fmt.Println("sum_half",sum_half)
    // fmt.Println("diff_prev",diff_prev)
    // fmt.Println("diff",diff)
    if diff < 0 {
      if (i == 0) {
        result = -diff
      } else {
        if (-diff < diff_prev) {
          result = -diff
        } else {
          result = diff_prev
        }
      }
      break
    }
    diff_prev = diff
  }
  fmt.Println(result*2)
}


