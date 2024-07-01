package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	if a < b {
		if b < c {
			if a < c {
				//a < b < c
				fmt.Print(a)
				fmt.Print(" ")
				fmt.Print(b)
				fmt.Print(" ")
				fmt.Println(c)
			} else {
				//a < c < b
				fmt.Print(a)
				fmt.Print(" ")
				fmt.Print(c)
				fmt.Print(" ")
				fmt.Println(b)
			}
		} else {
			//c < a < b
			fmt.Print(c)
			fmt.Print(" ")
			fmt.Print(a)
			fmt.Print(" ")
			fmt.Println(b)
		}
	} else if c < b {
		if a < c {
			//b < a < c
			fmt.Print(b)
			fmt.Print(" ")
			fmt.Print(a)
			fmt.Print(" ")
			fmt.Println(c)
		} else {
			//c < b < a
			fmt.Print(c)
			fmt.Print(" ")
			fmt.Print(b)
			fmt.Print(" ")
			fmt.Println(a)
		}
	} else {
		//b < c < a
		fmt.Print(b)
		fmt.Print(" ")
		fmt.Print(c)
		fmt.Print(" ")
		fmt.Println(a)
	}
}
