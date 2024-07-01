package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	n := scanInt()
	a := make([]int,n)
	b := make([]int,n)
	c := make([]int,n)
	for i:= 0; i<n; i++ {
		a[i] = scanInt()
	}
	for i:= 0; i<n; i++ {
		b[i] = scanInt()
	}
	for i:= 0; i<n; i++ {
		c[i] = scanInt()
	}
	sort.Ints(a)
	sort.Ints(b)
	sort.Ints(c)
	sum := 0
	// d,e,f := 0
	for i:= 0; i< n; i++ {
		// bを基準とする
		countA := 0 //こいつをsumにいれる？
		countC := 0
		for k:=0; k<n && a[k]<b[i]; k++ {
			// fmt.Println(k)
			countA += 1
		}
		for k:=n-1; k>=0 && c[k]>b[i]; k-- {
			countC += 1
		}
		sum += countA*countC
		// sum += countb*countc
	}
	fmt.Println(sum)
}