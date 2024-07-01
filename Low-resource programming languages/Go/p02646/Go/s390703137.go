package main

import(
	f "fmt"
)

func main() {
	var a_place, a_v int
	f.Scan(&a_place, &a_v)

	var b_place, b_v int
	f.Scan(&b_place, &b_v)

	var time int
	f.Scan(&time)

	a := a_v * time + a_place
	b := b_v * time + b_place

	if a_place < b_place{
		if a >= b {
			f.Println("YES")
		} else {
			f.Println("NO")
		}
	} else {
		if a <= b {
			f.Println("YES")
		}else{
			f.Println("NO")
		}
	}
}