package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)

func main() {
	n := func() int { stdin.Scan(); i, _ := strconv.Atoi(stdin.Text()); return i }()
	arrB := scanArrayInt()
	arrA := make([]int, n)
	arrA[0], arrA[1] = arrB[0], arrB[0]
	for i := 1; i < n-1; i++ {
		if arrA[i] > arrB[i] {
			arrA[i] = arrB[i]
		}
		arrA[i+1] = arrB[i]
	}
	sum := 0
	for i := 0; i < n; i++ {
		sum += arrA[i]
	}
	fmt.Println(sum)
}
func scanArrayInt() []int {
	var ret = []int{}
	stdin.Scan()
	for _, s := range strings.Split(stdin.Text(), " ") {
		i, _ := strconv.Atoi(s)
		ret = append(ret, i)
	}
	return ret
}