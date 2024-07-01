package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	"sort"
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

func main() {
	p := scanInt()
	q := scanInt()
	r := scanInt()
	arr := ia {p, q, r}
	sort.Sort(arr)
	fmt.Println(arr[0] + arr[1])
}