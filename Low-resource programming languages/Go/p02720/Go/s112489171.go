package main

import "fmt"

func pow (x int) int {
	if x == 0 {
		return 1
	}
	ans := 1
	for i:=0 ; i<x ; i++{
		ans *= 10
	}
	return ans
}

func calc (dep int, mat []int, sum int, ans int) int {
//fmt.Println("calc: dep",dep,"sum",sum,"ans",ans)
	if dep < 10 {
		return ans+dep
	}
	if dep % 10 == 0{
		if sum <= mat[dep-10] {
//fmt.Println("dep10->0, go down")
			return calc(dep-10,mat,sum,ans+pow(dep/10)*(dep%10))
		} else {
//fmt.Println("dep10->0, go right")
			return calc(dep-9,mat,sum-mat[dep-10],ans+pow(dep/10)*(dep%10))
		}
	} else if dep % 10 == 9{
		if sum <= mat[dep-11] {
//fmt.Println("dep10->9, go left")
			return calc(dep-11,mat,sum,ans+pow(dep/10)*(dep%10))
		} else {
//fmt.Println("dep10->9, go down")
			return calc(dep-10,mat,sum-mat[dep-11],ans+pow(dep/10)*(dep%10))
		}
	} else {
		if sum <= mat[dep-11] {
//fmt.Println("dep10->else, go left")
			return calc(dep-11,mat,sum,ans+pow(dep/10)*(dep%10))
		} else if sum <= mat[dep-11] + mat[dep-10] {
//fmt.Println("dep10->else, go down")
			return calc(dep-10,mat,sum-mat[dep-11],ans+pow(dep/10)*(dep%10))
		} else {
//fmt.Println("dep10->else, go right")
			return calc(dep-9,mat,sum-mat[dep-10]-mat[dep-11],ans+pow(dep/10)*(dep%10))
		}
	}
}

func main(){
	var k,sum int
	fmt.Scan(&k)
	mat := make([]int,100) // i = i/10+1桁目がi%10
	for i:=0 ; i < 10; i++ {
		mat[i] = 1
	}
	for i := 10 ; i < 100 ; i++{
		if i%10 == 0{
			mat[i] = mat[i-10] + mat[i-9]
		} else if i%10 == 9 {
			mat[i] = mat[i-10] + mat[i-11]
		} else {
			mat[i] = mat[i-9] + mat[i-10] + mat[i-11]
		}
	}
/*
for i:=0 ; i<10 ; i++ {
	fmt.Println(mat[i*10:(i+1)*10])
}
*/
	for i:=0 ; i<100 ; i++ {
		if i%10 == 0{
			continue
		}
		sum += mat[i]
		if k <= sum {
//fmt.Println(i)
			fmt.Println(calc(i,mat,k-(sum-mat[i]),0))
			break
		}
	}
}
