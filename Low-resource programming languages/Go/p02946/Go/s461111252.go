package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	K, X := ReadInt(), ReadInt()
	for i := X - (K - 1); i <= X+(K-1); i++ {
		fmt.Printf("%d ", i)
	}
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int)       { Scan(&i); return }
func ReadString() (s string) { Scan(&s); return }
