package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	L := map[int]int{}
	R := map[int]int{}

	for i := 0; i < N; i++ {
		a := nextInt()

		n, ok := L[i-a]
		if !ok {
			n = 0
		}
		n++
		L[i-a] = n

		n, ok = R[i+a]
		if !ok {
			n = 0
		}
		n++
		R[i+a] = n
	}

	c := 0
	for n1, v1 := range L {
		v2, ok := R[n1]

		if ok {
			c += v1 * v2
		}
	}

	fmt.Println(c)
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
