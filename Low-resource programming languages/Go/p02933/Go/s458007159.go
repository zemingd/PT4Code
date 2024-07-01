package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	aStr := stdin.Text()
	stdin.Scan()
	s := stdin.Text()

	a, _ := strconv.Atoi(aStr)
	if a >= 3200 {
		fmt.Println(s)
	} else {
		fmt.Println("red")
	}
}
