package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var text string
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		text = scanner.Text()
	}
	n, _ := strconv.Atoi(text)
	fmt.Println(n * n * n)
}

