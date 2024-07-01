package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scan_init()
	k := scanInt()
	n := scanInt()
	// a := make([]int,n)
	circle := make(map[int]int)
	for i:=0; i<n; i++ {
		number := scanInt() % k
		circle[number] = number
	}
	end := 0
	start := 0
	zero := false
	for i,_ := range circle {
		if i == 0 {
			zero = true
			continue
		}
		if start > i && i != 0{
			start = i
		}
		if end < i {
			end = i
		}
	}
	sum := end-start
	if zero {
		// zero　が0の時考える
		sum := end-0
		if sum > k-start {
			sum = k-start
		}
	}
	fmt.Println(sum)
}
var sc = bufio.NewScanner(os.Stdin)
func scan_init () {
	sc.Split(bufio.ScanWords)
}
func scanInt () int{
sc.Scan()
	i,_ := strconv.Atoi(sc.Text())
	return i
}
//func scan () string{
//  sc.Scan()
//	return sc.Text()
//}
