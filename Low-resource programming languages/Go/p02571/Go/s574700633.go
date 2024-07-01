package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	S, T := next(), next()

	min := 100000

	for i := 0; i <= len(S)-len(T); i++ {
		miss := 0
		for j := 0; j < len(T); j++ {
			if S[i+j] != T[j] {
				miss += 1
			}
		}
		if miss < min {
			min = miss
		}
	}
	fmt.Println(min)
}
