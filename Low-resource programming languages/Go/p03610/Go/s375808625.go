package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var (
	reader = bufio.NewReader(os.Stdin)
	writer = bufio.NewWriter(os.Stdout)
)

func main() {
	defer writer.Flush()
	var S string
	fmt.Fscanf(reader, "%s\n", &S)
	SArray := strings.Split(S, "")
	for i, s := range SArray {
		if i % 2 == 0 {
			fmt.Fprintf(writer, "%s", s)
		}
	}
	fmt.Fprint(writer, "\n")
}
