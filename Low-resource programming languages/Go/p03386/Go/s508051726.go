package main

import (
	"bufio"
	"bytes"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var A, B, K int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d %d %d", &A, &B, &K)

	var buffer bytes.Buffer
	for i := A; i <= B; i++ {
		if i < A+K || i > B-K {
			buffer.WriteString(strconv.Itoa(i))
			buffer.WriteString("\n")
		}
	}
	fmt.Println(buffer.String())

}
