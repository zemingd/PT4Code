package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var n int
	fmt.Fscan(r, &n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Fscan(r, &a[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))
	var ans int64
	for i := 0; i < n-1; i++ {
		ans += int64(a[(i+1)/2])
	}
	fmt.Println(ans)
}
