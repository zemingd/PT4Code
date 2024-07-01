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
	start := k+1
	// zero := false
	for i,_ := range circle {
		if start > i{
			start = i
		}
		if end < i {
			end = i
		}
	}

	sum := end-start
	secondstart := k+1
	secondend := 0
	secondsum := 0
	for i,_ := range circle {
		if secondstart > k-i{
			secondstart = k-i
		}
		if secondend < k-i {
			secondend = k-i
		}
	}
	secondsum = secondend - secondstart
	if sum > secondsum {
		sum = secondsum
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
