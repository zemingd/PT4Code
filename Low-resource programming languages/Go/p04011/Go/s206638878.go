package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main()  {
	a, b, c, d := nextLine(), nextLine(), nextLine(), nextLine()
	N, _ := strconv.Atoi(a)
  	K, _ := strconv.Atoi(b)
  	X, _ := strconv.Atoi(c)
  	Y, _ := strconv.Atoi(d)
	var total int
	if N > K {
		total = K * X + (N - K) * Y
	} else {
		total = N * X
	}
	fmt.Println(total)
}
