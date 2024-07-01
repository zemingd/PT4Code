package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func sliceAtoi(arr []string) []int {
	si := make([]int, 0, len(arr))
	for _, a := range arr {
		i, _ := strconv.Atoi(a)
		si = append(si, i)
	}
	return si
}

func main() {
	x, _ := strconv.Atoi(nextLine())
	num := 100
	result := 0
	for {
		result++
		num = int(float64(num) * 1.01)
		if x <= num {
			break
		}
	}
	fmt.Println(result)
}
