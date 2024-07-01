package main
 
import (
	"bufio"
    "time"
    "fmt"
    "os"
 )

var sc = bufio.NewScanner(os.Stdin)

func main() {
    var str string
    if sc.Scan() {
        str = sc.Text()
    }
  
  layout := "2006/01/02"
  s, _ := time.Parse(layout, str)
  
  tbd := "2019/05/01"
  t, _ := time.Parse(layout, tbd)
  
  if s.Unix() < t.Unix() {
    fmt.Println("Heisei")
  } else {
    fmt.Println("TBD")
  }
}