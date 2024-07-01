package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	SA, _ := reader.ReadString('\n')
	SB, _ := reader.ReadString('\n')
	A, _ := strconv.Atoi(SA)
	B, _ := strconv.Atoi(SB)

	n := (B - 1) / (A - 1)
	if (B-1)%(A-1) > 0 {
		n++
	}
	fmt.Println(n)
}
