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

	n := make([]bool, N)
	for i := 0; i < K; i++ {
		var d int
		fmt.Scanf("%d", &d)

		stdin := bufio.NewScanner(os.Stdin)
		stdin.Scan()
		s := stdin.Text()

		list := convToIntList(strings.Split(s, " "))
		for _, a := range list {
			index := a - 1
			n[index] = true
		}
	}
	fmt.Println(n)
	counter := 0
	for _, v := range n {
		if v == false {
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
