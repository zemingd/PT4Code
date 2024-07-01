package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

func main() {
	sc.Split(bufio.ScanWords)
	N := nextInt()
	cx, cy, ct := 0, 0, 0
	for i := 0; i < N; i++ {
		t, x, y := nextInt(), nextInt(), nextInt()
		if (t - ct) % 2 == (abs(x - cx) + abs(y - cy)) % 2 && (t - ct) >= (abs(x - cx) + abs(y - cy)) {
			ct = t
			cx = x
			cy = y
		} else {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}

// -------- Library --------
func abs(x int) int {
	if x > 0 {
		return x
	} else {
		return -x
	}
}

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	v, err := strconv.Atoi(next())
	if err != nil {
		fmt.Println("Failed to read int", err)
		os.Exit(1)
	}
	return v
}

func nextIntArray(size int) []int {
	res := make([]int, size)
	for i := 0; i < size; i++ {
		res[i] = nextInt()
	}
	return res
}
