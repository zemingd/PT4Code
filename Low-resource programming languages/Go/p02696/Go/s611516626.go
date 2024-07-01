package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	var i int
	if sc.Scan() {
		if num, err := strconv.Atoi(sc.Text()); err == nil {
			i = num
		}
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	var max int
	a, b, n := nextInt(), nextInt(), nextInt()

	for x := 0; x <= n; x++ {
		v := (a*x)/b - int(x/b)*x
		if max <= v {
			max = v
		}
	}
	fmt.Println(max)
}
