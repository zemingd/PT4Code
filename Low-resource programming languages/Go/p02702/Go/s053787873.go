package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	defer flush()

	S := readString()
	b := []byte(S)
	for i := 0; i < len(b); i++ {
		b[i] -= '0'
	}

	result := 0
	p := 0
	for i := p; i < len(b); i = p {
		i := p
		t := 0
		for j := i; j < len(b); j++ {
			t = (t*10 + int(b[j])) % 2019
			if t == 0 {
				result++
				//println(S[i : j+1])
				if i == p {
					v := 0
					for k := j; k <= j; k++ {
						v += int(b[k])
						if v%3 != 0 {
							continue
						}
						p = k + 1
						break
					}
				}
			}
		}
		if i == p {
			p++
		}
	}
	println(result)
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

func readInts(n int) []int {
	result := make([]int, n)
	for i := 0; i < n; i++ {
		result[i] = readInt()
	}
	return result
}

var stdoutWriter = bufio.NewWriter(os.Stdout)

func flush() {
	stdoutWriter.Flush()
}

func printf(f string, args ...interface{}) (int, error) {
	return fmt.Fprintf(stdoutWriter, f, args...)
}

func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(stdoutWriter, args...)
}
