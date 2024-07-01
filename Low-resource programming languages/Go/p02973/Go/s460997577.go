package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	colors := make([]int, 0)

	for i := 0; i < N; i++ {
		a := nextInt()
		found := false

		for j := len(colors) - 1; j >= 0; j-- {
			if colors[j] < a {
				last := len(colors) - 1
				old := colors[last]
				colors[last] = a
				colors[j] = old
				found = true
				break
			}
		}

		if !found {
			colors = append(colors, a)
		}
	}

	fmt.Println(len(colors))
}

var stdin = initStdin()

func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024 // 1 MB
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
