package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := nextInt64()
	n := N
	c := 0

	if N == 1 {
		fmt.Println(0)
		return
	}

	for i := int64(2); i*i <= N; i++ {
		c1 := 0
		for n%i == 0 {
			c1++
			n = n / i
		}
		for j := 1; j <= c1; j++ {
			c++
			c1 -= j
		}

		if n < i {
			break
		}
	}

	if n == N {
		// 素数
		fmt.Println(1)
	} else {
		fmt.Println(c)
	}
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

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)
	return i
}
