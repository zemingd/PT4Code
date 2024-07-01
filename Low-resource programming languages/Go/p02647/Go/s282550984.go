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
	if K > 5000 {
		K = 5000
	}
	for i:= 0; i<K; i++ {
		//愚直にやる -> 多分無理
		b = make([]int, N)
		mapNext := make([]int,N) //どこで-1なるか調べる
		count := 0
		for j := 0; j < N; j++ {
			//next方向
			light := a[j]
			if !(b[j] >= N) {
				b[j] += count+1
			}
			if light > 0 {
				count += 1
				if N > light + j {
					mapNext[light+j] += 1
				}
			}
			count -= mapNext[j]
		}
		mapPrev := make([]int,N)
		count = 0
		for j:= N-1; j>=0; j-- {
			light := a[j]
			if !(b[j] >= N) {
				b[j] += count
			}
			if light > 0 {
				count += 1
				if j - light >= 0 {
					mapPrev[j-light] +=1
				}
			}
			count -= mapPrev[j]
		}
		a = b
	}
	for i:= 0; i<N; i++ {
		fmt.Print(a[i])
		fmt.Print(" ")
	}
}
var sc = bufio.NewScanner(os.Stdin)
func scanInt () int{
	sc.Scan()
	i,_ := strconv.Atoi(sc.Text())
	return i
}