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
	arr := scanArrayInt()
	max := -10000000000000000
	if max < arr[0]+arr[1] {
		max = arr[0] + arr[1]
	}
	if max < arr[0]-arr[1] {
		max = arr[0] - arr[1]
	}
	if max < arr[0]*arr[1] {
		max = arr[0] * arr[1]
	}
	fmt.Println(max)
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