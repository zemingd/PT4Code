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
	N, _ := strconv.Atoi(stdin.Text())
	stdin.Scan()
	AN := strings.Split(stdin.Text(), " ")

	max := 0
	count := 0
	for i := 0; i < N-1; i++ {

		A1, _ := strconv.Atoi(AN[i])
		A2, _ := strconv.Atoi(AN[i+1])
		if max < A1 {
			count += max - A2
			AN[i+1] = AN[i]
		}
	}

	fmt.Println(count)
}
