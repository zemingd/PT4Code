package main

import (
	"fmt"
)

func main() {
	TaxIncrease()

}
func TaxIncrease() {

	var A, B int

	fmt.Scan(&A, &B)

	var Aval, Bval float64

	var i float64

	for i = 1; i < 1000; i++ {

		Aval = i * 0.08

		Bval = i * 0.1

		if int(Aval) == A && int(Bval) == B {

			fmt.Println(i)

			return
		}
	}

	fmt.Println(-1)

}
