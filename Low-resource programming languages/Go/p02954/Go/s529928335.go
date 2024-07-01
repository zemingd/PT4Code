package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	S := nextBytes()
	N := len(S)
	children := make([]int, N)
	lefts := make([]int, N)  // i番目とその左にいくつLが並んでいるか
	rights := make([]int, N) // i番目とその右にいくつRが並んでいるか

	for i := 0; i < N; i++ {
		if S[i] == 'L' {
			lefts[i] = lefts[i-1] + 1
		} else {
			lefts[i] = 0
		}
		j := N - 1 - i
		if S[j] == 'R' {
			rights[j] = rights[j+1] + 1
		} else {
			rights[j] = 0
		}
	}
	for i := 0; i < N; i++ {
		var p int
		if lefts[i] > 0 {
			// 初手左
			p = i - lefts[i]

			if lefts[i]%2 == 1 {
				p++
			}
		} else {
			// 初手右
			p = i + rights[i]

			if rights[i]%2 == 1 {
				p--
			}
		}
		children[p]++
	}

	for i := 0; i < N; i++ {
		fmt.Print(children[i])

		if i+1 == N {
			fmt.Printf("\n")
		} else {
			fmt.Printf(" ")
		}
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
