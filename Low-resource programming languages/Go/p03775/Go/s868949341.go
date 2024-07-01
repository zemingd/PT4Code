package main

import (
	"fmt"
	"math"
	"sort"
	"strconv"
)

func main() {

	var N int

	fmt.Scan(&N)

	max := int(math.Sqrt(float64(N))+1)

	var A,B string

	var result[] int


	for i:=1;i<=max;i++{

		if N%i==0{

			A = strconv.Itoa(i)
			B = strconv.Itoa(N/i)

			if len(A) > len(B){

				result = append(result,len(A))

			}else{

				result = append(result,len(B))

			}
		}
	}

	sort.Sort(sort.IntSlice(result))


	fmt.Println(result[0])

}