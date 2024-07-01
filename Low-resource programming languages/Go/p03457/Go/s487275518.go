package main
import (
   "fmt"
   "os"
   "bufio"
   "strconv"
   "math"
)
var sc = bufio.NewScanner(os.Stdin)

func main() {
  sc.Split(bufio.ScanWords)
  n := nextInt()
  x := 0.0
  y := 0.0
  t := 0
  var result []bool
  for i := 0; i < n; i++{
    ti := nextInt()
    xi := nextFloat()
    yi := nextFloat()
	t = ti - t
	abs := math.Abs(xi - x) + math.Abs(yi - y)
	fmt.Println(abs)
	if t % 2 == 0{
		if int(abs) <= t && int(abs)  % 2 == 0 {
			result = append(result, true)
		} else {
			result = append(result,false)
		}
	} else {
		if int(abs) <= t && int(abs)  % 2 == 1 {
			result = append(result, true)
		} else {
			result = append(result,false)
		}

	}
	t = ti
	x = xi
	y = yi
  }

  flg := true
  length  := len(result)
  for i := 0; i < length; i++ {
	  if result[i] == false {
		  flg = false
	  }
  }

  if flg {
	  fmt.Println("Yes")
  } else {
	  fmt.Println("No")
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
