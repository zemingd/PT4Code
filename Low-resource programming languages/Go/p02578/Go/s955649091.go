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

	count := 0
	for i := 0; i < N-1; i++ {
		A1, _ := strconv.Atoi(AN[i])
		A2, _ := strconv.Atoi(AN[i+1])
		if 0 < A1-A2 {
			count += A1 - A2
			AN[i+1] = strconv.Itoa(A1)
		}
	}
	fmt.Println(count)
}
