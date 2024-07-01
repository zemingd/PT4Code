package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var a int
	scanner.Scan()
	a, _ = strconv.Atoi(scanner.Text())

	fmt.Println(3 * a * a)
}
