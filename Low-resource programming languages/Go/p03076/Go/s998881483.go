package main

import "fmt"
import "math"

func main(){
	var a[5] int 
	var min_ten, index, tmp, min_tmp int
	var tmp2 float64
	var count[5] int	
	var b[5] int


	for i := 0 ; i < 5 ; i++ {
		fmt.Scan(&a[i])
		b[i] = a[i]
	}
	for i := 0 ; i < 5 ; i++ {
		// count[i] = 0
		tmp = b[i]

		for j := 0 ; tmp != 0 ; j++{
			if tmp < 0 {break}
			tmp = tmp / 10
			count[i]++
		}
	}
	// fmt.Println(count)
	min_tmp = 130
	for i := 0 ; i < 5 ; i++{
		switch count[i] {
		case 1:
			tmp = a[i]
		case 2:
			tmp = a[i] % 10
		case 3:
			tmp = a[i] % 10
			tmp = tmp % 10
		}
		if tmp < min_tmp && tmp != 0{
			min_ten = a[i]
			min_tmp = tmp
			index = i
		}
	}
	tmp = 0
	for i := 0 ; i < 5 ; i++{
		if i != index {
			tmp2 = float64(float64(a[i]) / float64(10))
			tmp += int(math.Ceil(tmp2)) * 10 
		}
	}
	fmt.Println(min_ten+tmp)
}