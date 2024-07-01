package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	arg := stdin.Text()
	count := 0
	for _, r := range arg {
		if string(r) == "1" {
			count = count + 1
		}
	}
	fmt.Println(count)
}
