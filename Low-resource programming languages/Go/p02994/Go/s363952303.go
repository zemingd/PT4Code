package main

import (
  	"sort"
	"fmt"

)
func main() {

	var N,L int

	fmt.Scan(&N,&L)

	aji := make([]int,N)

	for i:=1;i<=N;i++{

		aji[i-1] = L+i-1

	}

	sort.Sort(sort.IntSlice(aji))

	sum :=0

	temp :=0
	min :=0
	index :=0

	if aji[0] > 0{

		for i:=1;i<=len(aji)-1;i++{

			sum = sum + aji[i]
		}

		fmt.Println(sum)

	}else{

		for j:=0;j<len(aji);j++{

			if aji[j] < 0 {

				temp = aji[j] *-1
			
			}else{
				temp = aji[j]

			}

			if j==0{

				min =temp
				
			}else if min >= temp {

			 min = temp

			 index =j
			}

		}
      
		for j:=0;j<len(aji);j++{

			if j != index {

				sum =sum + aji[j]
			}

		}

		fmt.Println(sum)
	}

}