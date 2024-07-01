package main

import (
	"fmt"
	"math"
)

func main() {

	var N int

	fmt.Scan(&N)

	var num []int

	for i:=0;i<N;i++{
		num = append(num,i)
	}

	x:=SliceInt(N)
	y:=SliceInt(N)

	for i:=0;i<N;i++{

		fmt.Scan(&x[i],&y[i])
	}

	sum :=0.0

	for _,v:= range Permute(num){

		for i:=0;i<N-1;i++{
			sum += math.Sqrt(math.Pow(float64(x[v[i+1]]-x[v[i]]),2) + math.Pow(float64(y[v[i+1]]-y[v[i]]),2))
		
		}
	} 

	cnt:=1

	for i:=N;i>0;i--{

		cnt = cnt*i

	}

	result :=   sum / float64(cnt)

	fmt.Println(result)

}

//Permute 順列
func Permute(nums []int) [][]int {
	n := factorial(len(nums))
	ret := make([][]int, 0, n)
	permute(nums, &ret)
	return ret
}

//permute @ 
func permute(nums []int, ret *[][]int) {
	*ret = append(*ret, makeCopy(nums))

	n := len(nums)
	p := make([]int, n+1)
	for i := 0; i < n+1; i++ {
		p[i] = i
	}
	for i := 1; i < n; {
		p[i]--
		j := 0
		if i%2 == 1 {
			j = p[i]
		}

		nums[i], nums[j] = nums[j], nums[i]
		*ret = append(*ret, makeCopy(nums))
		for i = 1; p[i] == 0; i++ {
			p[i] = i
		}
	}
}

//factorial int
func factorial(n int) int {
	ret := 1
	for i := 2; i <= n; i++ {
		ret *= i
	}
	return ret
}

//makeCopy []int
func makeCopy(nums []int) []int {
	return append([]int{}, nums...)
}


//SliceInt 引数サイズのSliceを返す
func SliceInt(a int) []int {

	IntSample := make([]int, a)

	return IntSample

}
