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

	var count uint64
	for i := 0; i < N-1; i++ {
		A1, _ := strconv.Atoi(AN[i])
		A2, _ := strconv.Atoi(AN[i+1])
		if 0 < A1-A2 {
			count += uint64(A1 - A2)
			AN[i+1] = AN[i]
		}
	}

	fmt.Println(count)
}
