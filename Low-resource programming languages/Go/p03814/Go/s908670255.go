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

func main() {
	s := next()

	a, z := 0, 0
	for i := 0; i < len(s); i++ {
		if s[i] == 'A' {
			a = i
			break
		}
	}
	for i := len(s) - 1; i >= 0; i-- {
		if s[i] == 'Z' {
			z = i
			break
		}
	}

	fmt.Println(z - a + 1)
}
