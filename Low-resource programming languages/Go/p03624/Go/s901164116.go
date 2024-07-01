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
	ss := strings.Split(S, "")
	az := []string{"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
	azMap := make(map[string]bool)
	for _, alfa := range az {
		azMap[alfa] = false
	}
	for _, s := range ss {
		azMap[s] = true
	}
	for _, alfa := range az {
		if !azMap[alfa] {
			fmt.Fprintf(writer, "%s\n", alfa)
			return
		}
	}
}