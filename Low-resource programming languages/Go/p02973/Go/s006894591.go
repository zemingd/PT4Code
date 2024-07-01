package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	arr := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		arr[i], _ = strconv.Atoi(sc.Text())
	}

	count := 0
	done := make([]bool, n)
	for i, el := range arr {
		if done[i] {
			continue
		}

		current := el
		done[i] = true
		for j := i + 1; j < n; j++ {
			if done[j] {
				continue
			}

			if current < arr[j] {
				current = arr[j]
				done[j] = true
			}
		}
		count++
	}

	fmt.Println(count)
}
