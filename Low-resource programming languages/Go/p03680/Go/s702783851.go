package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	As := nextInts(N)

	visited := make(map[int]bool)
	stack := [][]int{{1, 0}}
	for len(stack) > 0 {
		var status []int
		stack, status = stack[:len(stack)-1], stack[len(stack)-1]
		button, count := status[0], status[1]
		if visited[button] {
			continue
		}
		if button == 2 {
			fmt.Println(count)
			return
		}
		visited[button] = true
		stack = append(stack, []int{As[button], count + 1})
	}
	fmt.Println(-1)
}

func nextInts(n int) []int {
	ret := make([]int, n+1)
	for i := 1; i <= n; i++ {
		ret[i] = nextInt()
	}
	return ret
}

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Buffer(make([]byte, 256), 1e9)
	sc.Split(bufio.ScanWords)
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
