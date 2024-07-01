package main

import (
	"bufio"
	"fmt"
  "math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextText() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
  a := nextInt()
  b := nextInt()
  c := nextInt()
  ab2 := 2*math.Sqrt(float64(a))*math.Sqrt(float64(b))
  sa := c - a - b
  if float64(sa) > ab2 {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}
