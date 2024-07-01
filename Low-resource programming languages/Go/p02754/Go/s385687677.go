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
  a := nextInt()
  b := nextInt()


  div := n / (a + b)
  divRemain := n % (a + b)
  remainBlue := 0

  if divRemain <= a {
	  remainBlue = divRemain
  } else {
	  remainBlue = a
  }

  fmt.Println(div * a + remainBlue)

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
