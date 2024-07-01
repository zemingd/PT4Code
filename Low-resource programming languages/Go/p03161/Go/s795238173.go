package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	inputs := strings.Split(stdin.Text(), " ")
	var n, i int
	n, _ = strconv.Atoi(inputs[0])
	for i = 0; i < n; i++ {
	}
	fmt.Println(n)
}
