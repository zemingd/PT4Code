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
  first := nextInt()
  second := nextInt()
  third := nextInt()
  if first <= second && second <= third{
    fmt.Println(strconv.Itoa(first) + " " + strconv.Itoa(second) + " " + strconv.Itoa(third))
  } else if first <= third && third <= second {
    fmt.Println(strconv.Itoa(first) + " " + strconv.Itoa(third) + " " + strconv.Itoa(second))
  } else if second <= first && first <= third {
    fmt.Println(strconv.Itoa(second) + " " + strconv.Itoa(first) + " " + strconv.Itoa(third))
  } else if second <= third && third <= first {
    fmt.Println(strconv.Itoa(second) + " " + strconv.Itoa(third) + " " + strconv.Itoa(first))
  } else if third <= second && second <= first {
    fmt.Println(strconv.Itoa(third) + " " + strconv.Itoa(second) + " " + strconv.Itoa(first))
  } else if third <= first && first <= second {
    fmt.Println(strconv.Itoa(third) + " " + strconv.Itoa(first) + " " + strconv.Itoa(second))
  }
}


func nextInt() (int) {
    sc.Scan()
    v, e := strconv.Atoi(sc.Text())
    if e != nil { panic(e) }
  return  v
}
