package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	if x < 1 && y < 1{
		return
	}

	count := 0
	for i:=0; i<=x; i++{
		for l:=0; l<=x; l++{
			if 4 * i + 2 * l == y{
				count++
			}
		}
	}

	if count>0{
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
}