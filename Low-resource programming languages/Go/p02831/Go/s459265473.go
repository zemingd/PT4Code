package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func max(a, b int) (int, int) {
	if a > b {
		return a, b
	}
	return b, a
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func main() {
	//var a, b, ans int
	var ans int
	//fmt.Scan(&a, &b)
	//d,s := max(a,b)
	sc.Split(bufio.ScanWords)
	s := nextInt()
	d := nextInt()
	for i := 2; ; i++ {
		r := d * i
		if r%s == 0 {
			ans = r
			break
		}
	}
	fmt.Println(ans)
}