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
	var n int
	fmt.Fscanf(reader, "%d", &n)
	if n%7 == 0 || n%4 == 0 || (n%4)%7 == 0 || (n%7)%4 == 0 {
		fmt.Fprintf(writer, "%s\n", "Yes")
	} else {
		fmt.Fprintf(writer, "%s\n", "No")
	}
}