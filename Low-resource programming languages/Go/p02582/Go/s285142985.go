package main

import (
	"fmt"
	"math"
)

func main(){
	x,k,d:=0,0,0
	fmt.Scan(&x,&k,&d)


	countP,countM:=0,0
	for i:=0;i<k;i++{
		if x > 0{
			x-=d

			if countM==1{
				if (k-i)%2!=0{
					continue
				}
				break
			}
			countP++
			countM=0
		}else{
			x+=d
			
			if countP==1{
				if (k-i)%2!=0{
					continue
				}
				break
			}
			countP=0
			countM++
		}
	}
	fmt.Println(math.Abs(float64(x)))
}
