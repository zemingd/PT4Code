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
	args := strings.Split(stdin.Text(), " ")

	N, _ := strconv.Atoi(args[0])
	X, _ := strconv.Atoi(args[1])
	T, _ := strconv.Atoi(args[2])

	count := 1
	for i := 1; ; i++ {
		if N <= X*i {
			break
		} else {
			count += 1
		}
	}

	fmt.Println(count * T)
}
