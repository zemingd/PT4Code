package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var stdInScanner = bufio.NewScanner(os.Stdin)

func nextInt() int {
	stdInScanner.Scan()
	i, _ := strconv.Atoi(stdInScanner.Text())
	return i
}

func main() {
	stdInScanner.Split(bufio.ScanWords)

	N := nextInt()

	var a int
	for i := 0; i < N; i++ {
		a = nextInt()
		if a%2 == 0 {
			if a%3 != 0 && a%5 != 0 {
				fmt.Println("DENIED")
				return
			}
		}
	}
	fmt.Println("APPROVED")
}
