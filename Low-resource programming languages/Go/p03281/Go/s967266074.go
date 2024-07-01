package main

import (
	"bufio"
	"os"
	"strconv"
	"fmt"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	N, _ := strconv.Atoi(scanner.Text())

	result := 0

	for i := 1; i <= N; i += 2 {
		kazu := 0
		for j := 1; j <= i; j++ {
			if i % j == 0 {
				kazu++
			}
		}
		if kazu == 8 {
			result++
		}
	}
	fmt.Println(result)
}