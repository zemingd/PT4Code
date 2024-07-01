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
	arrA := scanArrayInt()
	arrB := scanArrayInt()
	arrC := scanArrayInt()
	oldindex := 0
	sum := 0
	for i := 0; i < n; i++ {
		sum += arrB[arrA[i]-1]
		if arrA[i] == oldindex+1 && i != 0 {
			sum += arrC[oldindex-1]
		}
		oldindex = arrA[i]
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
