package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"runtime/pprof"
	"strconv"
)

func main() {
	f, err := os.Create("cpu.prof")
	if err != nil {
		log.Fatal("could not create CPU profile: ", err)
	}
	if err := pprof.StartCPUProfile(f); err != nil {
		log.Fatal("could not start CPU profile: ", err)
	}
	defer pprof.StopCPUProfile()

	N := readInt()
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = readInt()
	}

	result := 0
	bs := make([]int, N)
	for b := 0; b < 60; b++ {
		t := 0
		bs[N-1] = (A[N-1] >> uint(b)) & 1
		for i := N - 2; i > -1; i-- {
			a := (A[i] >> uint(b)) & 1
			bs[i] = bs[i+1] + a
			if a == 0 {
				t += bs[i+1]
			} else {
				t += (N - (i + 1)) - bs[i+1]
			}
		}
		t %= 1000000007
		B := (1 << uint(b)) % 1000000007
		result += (t * B) % 1000000007
		result %= 1000000007
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
