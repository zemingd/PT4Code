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

	if s[0] != 'A' {
		fmt.Println("WA")
		return
	}

	cCount := 0
	for i := 2; i <= len(s)-2; i++ {
		if s[i] == 'C' {
			cCount++
		}
	}
	if cCount != 1 {
		fmt.Println("WA")
		return
	}

	for i := 0; i < len(s); i++ {
		if !(s[i] == 'A' || s[i] == 'C' || (s[i] >= 'a' && s[i] <= 'z')) {
			fmt.Println("WA")
			return
		}
	}

	fmt.Println("AC")
}
