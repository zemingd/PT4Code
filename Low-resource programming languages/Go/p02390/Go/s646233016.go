package main

import "fmt"

func main()  {
	var S int
	fmt.Scan(&S)
	fmt.Printf("%d:%d:%d\n",S/(60*60), S%(60*60)/60, S%60)
}
