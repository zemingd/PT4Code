package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const (
	B = 100000007
)

func contains(a, b []byte) bool {
	al := len(a)
	bl := len(b)
	if al > bl {
		return false
	}

	t := 1
	for i := 0; i < al; i++ {
		t *= B
	}

	ah, bh := 0, 0
	for i := 0; i < al; i++ {
		ah = ah*B + int(a[i])
		bh = bh*B + int(b[i])
	}

	for i := 0; i+al <= bl; i++ {
		if ah == bh {
			return true
		}
		if i+al < bl {
			bh = bh*B + int(b[i+al]) - int(b[i])*t
		}
	}
	return false
}

func main() {
	N := readInt()
	S := readString()
	b := []byte(S)
	result := 0
	for i := 0; i < N; i++ {
		for j := i + result; j < N; j++ {
			if len(b[i:j+1]) > len(b[j+1:]) {
				break
			}
			if contains(b[i:j+1], b[j+1:]) {
				if j-i+1 > result {
					result = j - i + 1
				}
			}
		}
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
