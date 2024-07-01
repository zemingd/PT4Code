package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	scan_init()
	n := scanInt()
	a := make([]int,n)
	for i:= 0; i<n; i++ {
		a[i] = scanInt()
	}
	sort.Ints(a)
	sum := 0
	memo := map[int]int{}
	memo[a[n-1]] = 1
	atai := a[n-1]
	for i:= n-2;i>=0; i-- {
		if _,ok := memo[a[i]]; !ok {
			memo[a[i]] = 0
		}
		if memo[atai]>=2 && atai != a[i] {
			sum += atai
			memo[atai] -= 2
			if memo[atai] < 2 {
				atai = sort.SearchInts(a, atai)
			}
			continue
		}
		sum += atai
		atai =  a[i]
		memo[atai]++
	}
	fmt.Println(sum)
}

var sc = bufio.NewScanner(os.Stdin)

func scan_init() {
	sc.Split(bufio.ScanWords)
}
func scanInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func scan() string {
	sc.Scan()
	return sc.Text()
}