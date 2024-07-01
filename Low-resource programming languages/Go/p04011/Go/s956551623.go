package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N, K, X, Y := ReadInt(), ReadInt(), ReadInt(), ReadInt()
	if K >= N {
		fmt.Println(N * X)
		return
	}
	fmt.Println((N-K)*Y + K*X)
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int) { Scan(&i); return }
