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
  s := nextString()

  if (s == "BBB" || s == "AAA") {
	  fmt.Println("No")
  } else {
	  fmt.Println("Yes")
  }
}

func nextString() (string) {
	sc.Scan()
	v := sc.Text()
	return v
}

func nextInt() (int) {
	sc.Scan()
	v, e := strconv.Atoi(sc.Text())
    if e != nil { panic(e) }
    return v
}

func nextFloat() (float64) {
	sc.Scan()
	v, e := strconv.ParseFloat(sc.Text(), 64)
    if e != nil { panic(e) }
    return v
}
