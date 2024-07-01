package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)
var a,b []int
func main() {
	sc.Split(bufio.ScanWords)
	N := scanInt()
	K := scanInt()
	a = make([]int, N)
	for i:= 0; i<N; i++ {
		a[i] = scanInt()
	}
	// 前の状態とあとの状態を維持する必要がある
	for i:= 0; i<K; i++ {
		//愚直にやる -> 多分無理
		b = make([]int, N)
		go func() {
			for j := 0; j < N; j++ {
				light := a[j]
				// fmt.Println(a,b,light)
				for k := j - 1; (k >= 0 && k >= j-light); k-- {
					b[k] += 1
					// fmt.Println("back",k,j,"目",b,a,light)
				}
				for k := j + 1; (k < N && k <= j+light); k++ {
					b[k] += 1
					// fmt.Println("前",k,j,"目",b,a)
				}
				b[j] += 1
				// fmt.Println("")
			}
			a = b
		}()
	}
	for i:= 0; i<N; i++ {
		fmt.Print(a[i])
		fmt.Print(" ")
	}
	// 累積和？
	// x-d-0.5
	// 操作 -> 自分の光に干渉しているものをじぶんの光にする　-> graph?
	//
}
var sc = bufio.NewScanner(os.Stdin)
func scanInt () int{
	sc.Scan()
	i,_ := strconv.Atoi(sc.Text())
	return i
}