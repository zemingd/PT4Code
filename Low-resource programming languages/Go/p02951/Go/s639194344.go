package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextWord() string {
	sc.Scan()
	str := sc.Text()
	return str
}

func nextInt() int {
	i, e := strconv.Atoi(nextWord())
	if e != nil {
		panic(e)
	}
	return i
}

func main(){
	sc.Split(bufio.ScanWords)
	a, b, c := nextInt(), nextInt(), nextInt()
	ans := c - a + b
  if ans < 0 {
    ans = 0
  }
  fmt.Println(ans)
}
