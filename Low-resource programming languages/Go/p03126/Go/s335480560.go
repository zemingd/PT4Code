package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func input() int {
	sc.Scan()
	s := sc.Text()
	a, _ := strconv.Atoi(s)
	return a
}

func main() {
	sc.Split(bufio.ScanWords)
	var n, k int
	n = input()
	k = input()
	arr := []int{}
	for i := 0; i < k+1; i++ {
		arr = append(arr, 0)
	}
	for i := 0; i < n; i++ {
		var s int
		s = input()
		for j := 0; j < s; j++ {
			var a int
			a = input()
			arr[a] = arr[a] + 1
		}
	}
	sum := 0
	for i := 1; i < k+1; i++ {
		if arr[i] == n {
			sum++
		}
	}
	fmt.Println(sum)
}
