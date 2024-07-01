package main

import (
	"bufio"
	"fmt"
	"os"
)

var (
	reader = bufio.NewReader(os.Stdin)
	writer = bufio.NewWriter(os.Stdout)
)

func main() {
	defer writer.Flush()
	var K, S int
	fmt.Fscanf(reader, "%d %d", &K, &S)
	var count int
	for x := 0; x <= K; x++ {
		for y := 0; y <= K; y++ {
			for z := 0; z <= K; z++ {
				if S-x-y-z == 0 {
					count++
				}
			}
		}
	}
	fmt.Fprintf(writer, "%d\n", count)
}

