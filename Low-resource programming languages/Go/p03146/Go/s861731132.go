package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const mod = 1000000007

// 1MB
const ioBufferSize = 1 * 1024 * 1024

var sc = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	sc.Split(bufio.ScanWords)
	return sc
}()

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func f(n int) int {
	if n%2 == 1 {
		return 3*n + 1
	}
	return n / 2
}

func main() {
	s := nextInt()
	already := map[int]bool{}
	already[s] = true

	i := 1
	for {
		i++
		s = f(s)
		if already[s] {
			fmt.Println(i)
			return
		}
		already[s] = true
	}
}
