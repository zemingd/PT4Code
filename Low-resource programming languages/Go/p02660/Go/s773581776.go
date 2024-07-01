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

	if N == 1 {
		fmt.Println(0)
		return
	}

	c := 0
	primes := make(map[int64]int, 0)

	for i := int64(2); i*i <= N; i++ {
		c1 := 0
		for n%i == 0 {
			c1++
			n /= i
		}
		primes[i] = c1
	}
	if n != 1 {
		primes[N] = 1
	}

	for _, e := range primes {
		for x := 1; x <= e; x++ {
			c++
			e -= x
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

func nextInt64() int64 {
	i, _ := strconv.ParseInt(nextString(), 10, 64)
	return i
}
