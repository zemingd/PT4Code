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

func main() {
	sc.Split(bufio.ScanWords)
	// n := nextInt()
	var l [3]int
	for i := 0; i < 3; i++ {
		l[i] = nextInt()
	}
	x := l[1] + l[2] - l[0]
	if x > 0 {
		fmt.Println(x)
	} else {
		fmt.Println(0)
	}
}
