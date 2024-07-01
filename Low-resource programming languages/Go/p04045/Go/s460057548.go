package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

var ans int

func main() {
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	k, _ := strconv.Atoi(stringLineScan())
	d := make([]int, k)
	for i := 0; i < k; i++ {
		d[i], _ = strconv.Atoi(stringLineScan())
	}
	for i := n; ; i++ {
		p := strconv.Itoa(i)
		f := true
		for _, j := range p {
			q, _ := strconv.Atoi(string(j))
			if match(q, d) == false {
				f = false
				break
			}
		}
		if f {
			fmt.Println(i)
			break
		}
	}
}
func match(x int, y []int) bool {
	for _, i := range y {
		if x == i {
			return false
		}
	}
	return true
}
