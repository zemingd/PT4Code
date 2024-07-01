package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func calcMaxArea(w, h int) float64 {
	return float64(w*h) / 2.0
}

func existsMultiWays(w, h, x, y int) bool {
	isHalf := func(base, v int) bool {
		return base%2 == 0 && base/2 == v
	}

	return isHalf(w, x) && isHalf(h, y)
}

func main() {
	w, h, x, y := nextInt(), nextInt(), nextInt(), nextInt()

	fmt.Printf("%v ", calcMaxArea(w, h))
	if existsMultiWays(w, h, x, y) {
		fmt.Println(1)
	} else {
		fmt.Println(0)
	}
}
