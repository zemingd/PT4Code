package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scan_init()
	n := scanInt()
	k := scanInt()
	a := make([]int, n)
	aFlags := make([]bool, n)
	costA := make([]int,n)
	for i:= 0; i<n; i++ {
		a[i] = scanInt()-1
	}
	queue := []int{0}
	cost := 0
	start := 0 // startIndex
	end := 0
	aFlags[0] = true
	for len(queue)>0{
		var take int
		take, queue = shift(queue)
		costA[take] = cost
		cost ++
		next := a[take]
		if !aFlags[next] {
			aFlags[next] = true
			queue = append(queue,next)
		} else {
			end = take
			start = next
		}
	}
	length := costA[end] - (costA[start]) +1
	// amari := int(uint64(k)%length64)
	// fmt.Println(amari)
	// fmt.Println(costA, start, end, length, k)
	if k<20000 || length == 0 {
		take := 0
		// fmt.Println(length)
		for i:=0;i<k; i++ {
			take = a[take]
		}
		fmt.Println(take+1)
	} else {
		amari := int(uint64(k-costA[start])%uint64(length))
		take := start
		for i:=0; i<amari;i++{
			take =a[take]
		}
		fmt.Println(take+1)
	}

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
func scan () string{
 sc.Scan()
	return sc.Text()
}
func pop(slice []int) (int, []int) {
	n := len(slice)
	value := slice[n-1]
	popSlice := slice[0:n-1]
	return value, popSlice
}
func shift(slice []int) (int, []int){
	n := len(slice)
	value := slice[0]
	popSlice := slice[1:n]
	return value, popSlice
}