package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	n := make([][]int, K)
	for i := 0; i < K; i++ {
		var d int
		fmt.Scanf("%d", &d)

		stdin := bufio.NewScanner(os.Stdin)
		stdin.Scan()
		s := stdin.Text()

		list := convToIntList(strings.Split(s, " "))
		for _, a := range list {
			n[a-1] = append(n[a-1], 1)
		}
	}

	counter := 0
	for _, v := range n {
		if len(v) == 0 {
			counter++
		}
	}

	fmt.Println(counter)
}

func convToIntList(list []string) []int {
	newList := make([]int, len(list))
	for i, v := range list {
		a, _ := strconv.Atoi(v)
		newList[i] = a
	}

	return newList
}
