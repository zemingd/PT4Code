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
	N := scanInt()
	K := scanInt()
	p := make([]int,N)
	// memo := make(map[int]int,N)
	for i:= 0; i<N; i++ {
		p[i] = scanInt()
	}
	sum := 0
	sort.Ints(p)
	// fmt.Println(p)
	for i:= 0; i<K; i++ {
		sum += p[i]
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