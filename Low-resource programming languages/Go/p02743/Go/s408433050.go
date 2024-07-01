package main

import (
	"bufio"
	"fmt"
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
  ab2 := 4*a*b
  sa := c - a - b
  if sa < 0 {
    fmt.Println("No")
    return
  }
  sa2 := sa*sa
  if sa2 > ab2 {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}
