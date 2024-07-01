package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	S := nextBytes()
	N := nextInt()

	heads := make([]byte, 0)
	tails := make([]byte, 0)

	front := true

	for i := 0; i < N; i++ {
		T := nextInt()

		if T == 1 {
			// 反転
			front = !front
		} else {
			// 文字追加
			F := nextString()

			if front {
				heads = append(heads, F[0])
			} else {
				tails = append(tails, F[0])
			}
		}
	}

	if front {
		for i := len(heads) - 1; i >= 0; i-- {
			fmt.Print(heads[i])
		}
		for i := 0; i < len(S); i++ {
			fmt.Print(S[i])
		}
		for i := 0; i < len(tails); i++ {
			fmt.Print(tails[i])
		}
	} else {
		for i := len(tails) - 1; i >= 0; i-- {
			fmt.Print(tails[i])
		}
		for i := len(S) - 1; i >= 0; i-- {
			fmt.Print(S[i])
		}
		for i := 0; i < len(heads); i++ {
			fmt.Print(heads[i])
		}
	}
	fmt.Println()
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
