package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	SA, _ := reader.ReadString(' ')
	SB, _ := reader.ReadString('\n')
	A, _ := strconv.Atoi(SA[:len(SA)-1])
	B, _ := strconv.Atoi(SB[:len(SB)-1])

	n := (B - 1) / (A - 1)
	if (B-1)%(A-1) > 0 {
		n++
	}
	fmt.Println(n)
}
