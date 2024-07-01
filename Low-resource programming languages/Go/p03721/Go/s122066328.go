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

	// map left values
	// sort

	m := make(map[int]int)

	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	nk := strings.Split(scanner.Text(), " ")
	k, _ := strconv.Atoi(nk[1])
	for scanner.Scan() {
		ab := strings.Split(scanner.Text(), " ")
		a, _ := strconv.Atoi(ab[0])
		b, _ := strconv.Atoi(ab[1])
		m[a] += b
	}
	keys := make([]int, 0)
	for k := range m {
		keys = append(keys, k)
	}
	sort.Ints(keys)
	x := 0
	for k > 0 {
		k -= m[keys[x]]
		x++
	}
	fmt.Println(keys[x-1])
}