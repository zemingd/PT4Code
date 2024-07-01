package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	S := next()
	count := make([]int, len(S))
	for i := 0; i < len(S); i++ {
		dir := 1
		if S[i] == 'L' {
			dir = -1
		}
		j := i + dir
		for S[j] == S[i] {
			j += dir
		}
		if Abs(j-i)%2 == 0 {
			count[j]++
		} else {
			count[j-dir]++
		}
	}

	for i := 0; i < len(count)-1; i++ {
		fmt.Printf("%d ", count[i])
	}
	fmt.Printf("%d\n", count[len(count)-1])
}

func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
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
