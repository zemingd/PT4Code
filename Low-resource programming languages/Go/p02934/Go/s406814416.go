package main

import (
	"fmt"
	"bufio"
	"os"
)

func read (reader *bufio.Reader, n int) ([]uint32) {
	a := make([]uint32, n)
	for i:=0; i < n; i++ {
		fmt.Fscan(reader, &a[i])
	}
	return a
}

func main() {
	reader := bufio.NewReader(os.Stdin)
	var a int
	fmt.Fscan(reader, &a)
	b := read(reader, a)

	var x float64
	for i:=0; i < a; i++ {
		x = x + float64(1)/float64(b[i])
	}

	fmt.Println(1/x)
}
