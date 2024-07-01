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
	for i := 0; i < N; i++ {
		j, _ := strconv.Atoi(AN[i])
		if max < j {
			max = j
			count += max - j
		}
	}

	fmt.Println(count)
}
