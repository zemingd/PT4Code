package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	N, _ := strconv.Atoi(scanner.Text())

	words := []string{}
	for i := 0; i < N; i++ {
		scanner.Scan()
		words = append(words, scanner.Text())
	}

	for x, y := range words {
		if x != N-1 {
			if !strings.HasSuffix(y, words[x+1][0:1]) {
				fmt.Println("No")
				os.Exit(0)
			}
		}
		for _, v := range words[x+1:] {
			if y == v {
				fmt.Println("No")
				os.Exit(0)
			}
		}
	}

	fmt.Println("Yes")
}
