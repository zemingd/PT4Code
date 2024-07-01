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
  a := nextInt()
  b := nextInt()
  mul := a * b

  if mul % 2 == 0{
	  fmt.Println("Even")
  }else if mul % 2 == 1{
	  fmt.Println("Odd")
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
