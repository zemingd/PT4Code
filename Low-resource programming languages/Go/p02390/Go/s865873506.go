package main
import (
   "fmt"
   "os"
   "bufio"
   "strconv"
)
var sc = bufio.NewScanner(os.Stdin)

func main() {
  sc.Split(bufio.ScanWords)
  n := nextInt()
  hour := n / 3600
  remain_hour := n % 3600
  minute := remain_hour / 60
  second := remain_hour % 60
  fmt.Println(strconv.Itoa(hour) + ":" + strconv.Itoa(minute) + ":" + strconv.Itoa(second))
}


func nextInt() (int) {
    sc.Scan()
    v, e := strconv.Atoi(sc.Text())
    if e != nil { panic(e) }
    return v
}
