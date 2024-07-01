package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	// 標準入力読み取り
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	words := strings.Split(scanner.Text(), " ")
	n, _ := strconv.Atoi(words[0])
	k, _ := strconv.Atoi(words[1])
	scanner.Scan()
	a := make([]int, n)
	for i, word := range strings.Split(scanner.Text(), " ") {
		a[i], _ = strconv.Atoi(word)
	}

	products := make([]int, n*(n-1)/2)
	ii := 0
	for i := 0; i < n; i++ {
		for j := i; j < n; j++ {
			if i != j {
				products[ii] = a[i] * a[j]
				ii++
			}
		}
	}
	sort.Ints(products)
	fmt.Println(products[k-1])
}
