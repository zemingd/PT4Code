package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	// "strings"
	// "sort"
)

var stdin = initStdin()
 
func initStdin() *bufio.Scanner {
	bufsize := 1 * 1024 * 1024
	var stdin = bufio.NewScanner(os.Stdin)
	stdin.Buffer(make([]byte, bufsize), bufsize)
	stdin.Split(bufio.ScanWords)
	return stdin
}

func scanInt() int {
	stdin.Scan()
	i, _ := strconv.Atoi(stdin.Text())
	return i
}

func scanStr() string {
	stdin.Scan()
	return stdin.Text()
}

type ia []int

func (ia ia)Len() int {
	return len(ia)
}
func (ia ia)Swap(i, j int) {
	ia[i], ia[j] = ia[j], ia[i]
}
func (ia ia)Less(i, j int) bool {
	return ia[i] < ia[j]
}

func per(n int, k int) int {
	v := 1
	if 0 < k && k <= n {
			for i := 0; i < k; i++ {
					v *= (n - i)
			}
	} else if k > n {
			v = 0
	}
	return v
}

func fac(n int) int {
	return per(n, n - 1)
}

func com(n int, k int) int {
	return per(n, k) / fac(k)
}

func hom(n int, k int) int {
	return com(n + k - 1, k)
}

func main() {
	n := scanInt()
	a := scanInt()
	b := scanInt()
	ans := 0
	if n*a < b {
		ans = n*a
	} else {
		ans = b
	}
	fmt.Println(ans)
}