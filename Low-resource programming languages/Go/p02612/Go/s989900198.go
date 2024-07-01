package main

import (
	"fmt"
)

func main()  {
	var n int
	//  	var n string
	fmt.Scan(&n)

	if n % 1000 == 0{
		fmt.Println("0")
		return
	}

	money := 0
	for i := 0; i < 10; i++ {
		money += 1000
		if n < money{
			fmt.Println(money - n)
			return
		}
	}

}
