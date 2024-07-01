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
	k := scanInt()
	n := scanInt()
	// a := make([]int,n)
	circle := make(map[int]int)
	houses := []int{}
	for i:=0; i<n; i++ {
		number := scanInt() % k
		if number == 0 {
			number = k
		}
		if _,ok := circle[number]; !ok {
			circle[number] = number
			houses = append(houses,number)
		}
	}
	//時計回り
	sort.Ints(houses)
	sum := houses[len(houses)-1]-houses[0]
	//　反時計回り
	nextsum := k-houses[1]+houses[0]
	if sum > nextsum {
		sum = nextsum
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
