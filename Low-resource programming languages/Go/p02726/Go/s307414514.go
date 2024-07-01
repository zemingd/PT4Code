package main

import (
	"fmt"
	"os"
	"bufio"

)

func Abs(x int) int {
	if x < 0 {
		return -1 * x
	}
	return x
}
func min(x,y int) int{
	if x < y{
		return x
	}
	return y
}

func max(x,y int) int{
	if x > y{
		return x
	}
	return y
}

var output []int
func incircle(L int) {
	temp := (L * (L - 1) ) / 2
	for i := 1 ; i <= L / 2 ; i ++ {
		output[i] += min(L, temp)
		temp -= min(L, temp)
	}
}

func procir(A, L int){
	tota := []int{1}
	L -= 1
	for L >= 2 {
		tota = append(tota, 2)
		L -= 2
	}
	if L > 0 {
		tota = append(tota, L)
	}
	for i := 1 ; i <= A ; i ++ {
		for j := 0 ; j < len(tota) ; j ++ {
			output[ i + j ] += tota[j]
		}
	}
}

func bhr(A, B int){
	for i := 0 ; i < A ; i ++ {
		for j := 0 ; j < B ; j ++ {
			dis :=  i + j + 3
			output[dis] ++
		}
	}
}

func andr(A int){
	for i := 0 ; i < A ; i ++ {
		for j := i + 1 ; j < A ; j ++ {
			dis := j - i
			output[dis] ++
		}
	}
}

func main(){
	in := bufio.NewReader(os.Stdin)
	out := bufio.NewWriter(os.Stdout)
	defer out.Flush()

	var n, x, y int
	fmt.Fscanf(in, "%d %d %d\n", &n, &x, &y)
	var L int = int(y - x + 1)
	for i :=0 ; i < n ; i ++ {
		output = append(output, 0)
	}
	incircle(L)
	var A, B int
	A = x - 1
	B = n - y

	if A == 0 && B == 0 {

	}else if A != 0 && B != 0 {
		andr(A)
		andr(B)
		bhr(A, B)
		procir(A, L)
		procir(B, L)
	} else {
		A = max(A, B)
		andr(A)
		procir(A, L)
	}
	for i:= 1 ; i < n ; i ++ {
		fmt.Println(output[i])
	}
}
