package main

import (
	"bufio"
	"fmt"
	"os"
)

var writer = bufio.NewWriter(os.Stdout)

func main() {
	var A, B int
	fmt.Scan(&A, &B)

	if B%A == 0 {
		fmt.Fprintf(writer, "%d\n", A+B)
	} else {
		fmt.Fprintf(writer, "%d\n", B-A)
	}
	writer.Flush()
}
