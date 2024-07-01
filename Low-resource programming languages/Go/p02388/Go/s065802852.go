package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	if scanner.Scan() {
		if n, err := strconv.Atoi(scanner.Text()); err == nil {
			fmt.Println(n * n * n)
		} else {
			fmt.Println(err)
		}
	}
}
