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

func generate(tick, limitBase float64, numPerTick int) int {
	limit := limitBase + 0.5
	pass := 0.0

	num := 0

	for pass+tick <= limit {
		num += numPerTick
		pass += tick
	}
	return num
}

func main() {
	a, b, t := nextInt(), nextInt(), nextInt()
	r := generate(float64(a), float64(t), b)
	fmt.Println(r)
}
