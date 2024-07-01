package main

import "fmt"

func main()  {
	var d, t, s int
	_, _ = fmt.Scan(&d, &t, &s)
	v := d / s
	if t >= v{
		fmt.Println("Yes")
	}else {
		fmt.Println("No")
	}
}