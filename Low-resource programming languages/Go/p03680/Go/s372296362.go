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
	N := nextInt()
	buttons := make([]int, N)
	for i := 0; i < N; i++ {
		buttons[i] = nextInt()
	}
	var next, count int
	seen := make(map[int]bool)
	for next != 1 && !seen[next] {
		seen[next] = true
		next = buttons[next] - 1
		count++
	}
	if next == 1 {
		fmt.Println(count)
	} else {
		fmt.Println(-1)
	}
}
