package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	if x < 1 && y < 1 && 2 * x > y{
		return
	}

	count := 0
	for i:=0; i<x+1; i++{
		for l:=0; l<x+1; l++{
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