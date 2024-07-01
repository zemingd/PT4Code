package main
 
import (
  "bufio"
  "fmt"
  "os"
  "strconv"
  "strings"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func main() {
  if sc.Scan() {
    s := strings.Split(sc.Text(), "/")
    y, _ := strconv.Atoi(s[0])
    m, _ := strconv.Atoi(s[1])
    d, _ := strconv.Atoi(s[2])
    
    if y * 10000 + m * 100 + d <= 20190430 {
    	fmt.Printf("Heisei")
    } else {
    	fmt.Printf("TBD")
    }      
  }
}