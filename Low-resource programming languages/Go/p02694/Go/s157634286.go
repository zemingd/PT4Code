package main

import "fmt"

func main(){
	var x int
	fmt.Scan(&x)
	yokin := 100
	for i:=1; i<3762 ; i++ {
		yokin += int(float64(yokin/100))
		if yokin >= x {
			fmt.Println(i)
			break
		}
	}
}
