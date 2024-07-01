package main

import "fmt"

func main(){
	var (
		time int
		h int
		m int
		s int
	)
	fmt.Scan(&time)
	h = time / 3600
	m = (time % 3600) / 60
	s = time % 60
	fmt.Print(h)
	fmt.Print(":")
	fmt.Print(m)
	fmt.Print(":")
	fmt.Println(s)
}
