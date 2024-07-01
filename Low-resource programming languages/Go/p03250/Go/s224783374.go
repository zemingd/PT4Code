package main
import (
	"fmt"
	//"math"
	//"math/rand"
)
func main() {
	var A,B,C int
	fmt.Scan(&A,&B,&C)
	var p = A*10+B+C
	var q = B*10+A+C
	var r = C*10+A+B
	if p>=q && p>=r{
		fmt.Println(p)
	}else if q>=p && q>=r{
		fmt.Println(q)
	}else{
		fmt.Println(r)
	}
}