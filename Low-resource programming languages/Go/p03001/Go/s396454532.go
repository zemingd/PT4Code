package main

import (
	"fmt"
)

func main() {
	var W, H, x, y int
	fmt.Scan(&W, &H, &x, &y)
	total_squ := W * H
	//tate
	tate_squ := x * H
	//yoko
	yoko_squ := W * y
	if total_squ/2 < tate_squ {
		tate_squ = total_squ - tate_squ
	}
	if total_squ/2 < yoko_squ {
		yoko_squ = total_squ - yoko_squ
	}
	if tate_squ > yoko_squ {
		fmt.Println(tate_squ)
	} else if tate_squ > yoko_squ {
		fmt.Println(yoko_squ)
	} else {
		fmt.Println(tate_squ)
		fmt.Println("1")
		return
	}
	fmt.Println("0")
}