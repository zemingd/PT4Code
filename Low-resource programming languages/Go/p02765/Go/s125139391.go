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
	n, r := nextInt(), nextInt()
	var inner int
	if 10 <= n {
		inner = r
	} else {
		inner = r + 100*(10-n)
	}
	fmt.Println(inner)
}
