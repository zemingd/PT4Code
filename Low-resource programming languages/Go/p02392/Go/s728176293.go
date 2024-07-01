package main
import (
	"fmt"
)
func main() {
	var x, y, z int
	fmt.Scan(&x, &y, &z)
	if x < y && y < z{
	    fmt.Println("Yes")
	}else{
	    fmt.Println("No")
	}
}
