package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	A := make([]int, N+1)
	boxes := make([]int, N+1)
	counts := make([]int, N+1)

	for i := 1; i <= N; i++ {
		A[i] = nextInt()
	}
	for i := N; i >= 1; i-- {
		a := A[i]

		if a == counts[i]%2 {
			continue
		}
		boxes[i] = 1

		for j := 1; j*j <= i; j++ {
			if i%j == 0 { // 割り切れたら数を追加する
				counts[j]++
				k := i / j

				if j != k {
					counts[k]++
				}
			}
		}
	}

	fmt.Println(counts[1])
	first := true
	for i := 1; i <= N; i++ {
		if boxes[i] == 1 {
			if first {
				fmt.Printf("%d", i)
				first = false
			} else {
				fmt.Printf(" %d", i)
			}
		}
	}
	fmt.Println()

	// debug
	// for i := 1; i <= N; i++ {
	// 	fmt.Printf("%d ", counts[i])
	// }
	// fmt.Println()
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
