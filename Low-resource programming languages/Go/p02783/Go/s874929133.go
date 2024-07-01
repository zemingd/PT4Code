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
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	ss := strings.Split(sc.Text(), " ")
	n, _ := strconv.Atoi(ss[0])
	k, _ := strconv.Atoi(ss[1])
	sc.Scan()
	ss = strings.Split(sc.Text(), " ")
	var hi = make([]int, n)
	for i, v := range ss {
		hi[i], _ = strconv.Atoi(v)
	}
	if k >= n {
		fmt.Println(0)
		return
	}
	sort.Ints(hi)
	var sum int
	for i := 0; i < n-k; i++ {
		sum += hi[i]
	}
	fmt.Println(sum)
}
