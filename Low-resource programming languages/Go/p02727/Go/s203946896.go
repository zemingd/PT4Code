package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)
func main() {
	inf := 10000000001
	scan_init()
	x := scanInt()
	y := scanInt()
	a := scanInt()
	b := scanInt()
	c := scanInt()
	p := make([]int,a)
	q := make([]int,b)
	r := make([]int,c)
	for i:= 0; i<a; i++ {
		p[i] = scanInt()
	}
	for i:= 0; i<b; i++ {
		q[i] = scanInt()
	}
	for i:= 0; i<c; i++ {
		r[i] = scanInt()
	}
	sort.Ints(p)
	sort.Ints(q)
	sort.Ints(r)
	maxA := p[len(p)-x:]
	maxB := q[len(q)-y:]
	a_i := 0
	b_i := 0
	n := len(r)
	for i:=n-1; i>=0; i-- {
		value := r[i]
		aValue := inf
		bValue := inf
		if a_i<len(maxA) {
			aValue = maxA[a_i]
		}
		if b_i<len(maxB) {
			bValue = maxB[b_i]
		}
		if aValue < bValue {
			// aの方が小さい
			if value > aValue {
				// aよりcの方が大きければ
				maxA[a_i] = value
			}
			a_i++
		} else {
			if value > bValue {
				maxB[b_i] = value
			}
			b_i++
		}
	}
	sum := 0
	for i:= 0; i<len(maxA); i++ {
		sum += maxA[i]
	}
	for i:= 0; i<len(maxB); i++ {
		sum += maxB[i]
	}
	fmt.Println(sum)
}
//func pop(slice []interface{}) (interface{}, []interface{}) {
//	n := len(slice)
//	value := slice[n-1]
//	popSlice := slice[0:n-2]
//	return value, popSlice
//}
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