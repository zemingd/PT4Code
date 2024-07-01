package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func next() string {
	scanner.Scan()
	return scanner.Text()
}

func nextInt() int {
	i, _ := strconv.Atoi(next())
	return i
}

func chmin(a int, b int) int {
	if a > b {
		return b
	}
	return a
}

func chmax(a int, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	scanner.Split(bufio.ScanWords)

	w := nextInt()
	h := nextInt()
	x := nextInt()
	y := nextInt()

	if (x == 0 && y == 0) || (x == w && y == h) {
		fmt.Printf("%d %d\n", w*h, 0)
		return
	}

	// x axis
	sx1 := x * h
	sx2 := (w - x) * h
	ansx := chmin(sx1, sx2)

	// y axis
	sy1 := y * w
	sy2 := (h - y) * w
	ansy := chmin(sy1, sy2)

	result := chmax(ansx, ansy)
	result2 := 0
	if ansx == ansy {
		result2 = 1
	}

	fmt.Printf("%d %d\n", result, result2)
}
