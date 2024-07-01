package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 10 * 1024 * 1024 // 10 MB
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func nextString() string {
	stdin.Scan()
	return stdin.Text()
}

func nextBytes() []byte {
	stdin.Scan()
	return stdin.Bytes()
}

func nextInt() int {
	i, _ := strconv.Atoi(nextString())
	return i
}

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)

	return i
}

var memo [][]int
var cells []int
var n int

func canJump(from, to int) bool {
	if from > to {
		memo[from][to] = -1
		return false
	} else if from == to {
		return true
	} else if memo[from][to] == 1 {
		return true
	} else if memo[from][to] == -1 {
		return false
	}
	step2 := from < n-2 && cells[from+2] == 1 && canJump(from+2, to)
	if step2 {
		memo[from][to] = 1
		return true
	}

	step1 := from < n-1 && cells[from+1] == 1 && canJump(from+1, to)
	if step1 {
		memo[from][to] = 1
		return true
	}

	memo[from][to] = -1
	return false
}

func max(v int, values ...int) int {
	l := len(values)
	m := v

	for i := 0; i < l; i++ {
		if m < values[i] {
			m = values[i]
		}
	}

	return m
}

func min(v int, values ...int) int {
	l := len(values)
	m := v

	for i := 0; i < l; i++ {
		if m > values[i] {
			m = values[i]
		}
	}

	return m
}

func main() {
	n = nextInt()
	a := nextInt() - 1
	b := nextInt() - 1
	c := nextInt() - 1
	d := nextInt() - 1
	s := nextBytes()

	cells = make([]int, n) // -1なら岩
	memo = make([][]int, n)

	for i := 0; i < n; i++ {
		if s[i] == '#' {
			cells[i] = -1
		} else {
			cells[i] = +1
		}
		memo[i] = make([]int, n)
		memo[i][i] = +1
	}

	if !canJump(b, d) {
		return
	}
	if !canJump(a, c) {
		fmt.Println("No")
		return
	}
	// if d < c {
	// 	// 途中に3マス連続のマスが必要
	// 	var lower = max(0, b-2)
	// 	var upper = min(n-2, c-1, d+2)

	// 	for i := lower; i < upper; i++ {
	// 		if cells[i] == 1 && cells[i+1] == 1 && cells[i+2] == 1 {
	// 			fmt.Println("Yes")
	// 			return
	// 		}
	// 	}
	// 	fmt.Println("No")
	// 	return
	// }
	fmt.Println("Yes")
}
