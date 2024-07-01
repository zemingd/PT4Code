package main

import (
	"fmt"
	"sort"
)

func main() {

	var K int

	fmt.Scan(&K)

	sum:=0

	for i:=1;i<=K;i++{

		for j:=1;j<=K;j++{

			for z:=1;z<=K;z++{

				if i==1|| j==1||z==1{

					sum ++
				
				}else{

					sum += GCD3(i,j,z)
				
				}
			}
		}

	}

	fmt.Println(sum)

}

//GCD3 3つの最大公約数
func GCD3(a,b,c int) int{

	list := SliceInt(3)


	list[0]=a
	list[1]=b
	list[2]=c

	sort.Sort(sort.IntSlice(list))

	min := list[0]


	shou :=1


	for i:=1;i<=min;i++{

		if a%i==0 && b%i== 0 && c%i==0{

			a =a/i
			b = b/i
			c = c/i

			shou = shou*i

			i=1

		}

	}

	return shou

}




//SliceInt 引数サイズのSliceを返す
func SliceInt(a int) []int {

	IntSample := make([]int, a)

	return IntSample

}
