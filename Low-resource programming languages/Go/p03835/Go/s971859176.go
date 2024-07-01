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
			z := S - (x + y)
			if z <= 0 && z <= K {
				count++
			}
		}
	}
	fmt.Fprintf(writer, "%d\n", count)
}
