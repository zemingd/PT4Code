package main
 
import (
    "bufio"
    "fmt"
    "os"
    "strconv"
    "math"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func main() {
    sc.Split(bufio.ScanWords)
    sc.Scan()
    a, _ := strconv.Atoi(sc.Text())
    sc.Scan()
  
    var b float64
    b, _ = strconv.ParseFloat(sc.Text(), 64) 
    fmt.Print(int(math.Round(b*100))*a/100)
}