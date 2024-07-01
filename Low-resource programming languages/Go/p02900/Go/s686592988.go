package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func main() {
	A := readInt()
	B := readInt()

	N := gcd(A, B)
	if N == 1 {
		fmt.Println(1)
		return
	}

	n := int(math.Sqrt(float64(N)) +1)
	p := make([]bool, n+1)
	for i := 0; i < n+1; i++ {
		p[i] = true
	}
	p[0] = false
	p[1] = false
	nn := int(math.Sqrt(float64(n)) +1)
	for i := 4; i < n+1; i += 2 {
		p[i] = false
	}
	for i := 3; i < nn+1; i += 2 {
		if p[i] {
			for j := i + i; j < n+1; j += i {
				p[j] = false
			}
		}
	}

	result := 1
	for i := 2; i < n+1; i++ {
		if N%i == 0 && p[i] {
			result++
		}
	}
	if result == 1 {
		result++
	}
	fmt.Println(result)
}

const (
	ioBufferSize = 1 * 1024 * 1024 // 1 MB
)

var stdinScanner = func() *bufio.Scanner {
	result := bufio.NewScanner(os.Stdin)
	result.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	result.Split(bufio.ScanWords)
	return result
}()

func readString() string {
	stdinScanner.Scan()
	return stdinScanner.Text()
}

func readInt() int {
	result, err := strconv.Atoi(readString())
	if err != nil {
		panic(err)
	}
	return result
}
