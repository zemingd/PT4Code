package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)
var arr []int
var s []string

func main() {
	arr = scanArrayInt()
	stdin.Scan()
	s = strings.Split(stdin.Text(), "")
	if bsf(arr[1]-1, arr[2]-1) {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}

func bsf(ai, bi int) bool {
	if ai == arr[3]-1 && bi == arr[4]-1 {
		return true
	}
	var a, b, c, d bool
	if ai+1 < arr[0] && ai < arr[3]-1 {
		if s[ai+1] == "." && ai+1 != bi {
			a = bsf(ai+1, bi)
		}
	}
	if ai+2 < arr[0] && ai < arr[3]-1 {
		if s[ai+2] == "." && ai+2 != bi {
			b = bsf(ai+2, bi)
		}
	}
	if bi+1 < arr[0] && bi < arr[4]-1 {
		if s[bi+1] == "." && ai != bi+1 {
			c = bsf(ai, bi+1)
		}
	}
	if bi+2 < arr[0] && bi < arr[4]-1 {
		if s[bi+2] == "." && ai != bi+2 {
			d = bsf(ai, bi+2)
		}
	}
	return a || b || c || d
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