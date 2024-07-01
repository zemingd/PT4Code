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
	var N int
	fmt.Fscanf(reader, "%d\n", &N)
	for i := 0; i <= N; i += 7 {
		if (N-i)%4 == 0 {
			fmt.Fprintf(writer, "Yes\n")
			return
		}
	}
	fmt.Fprintf(writer, "No\n")
}
