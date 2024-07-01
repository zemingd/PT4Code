package main
 
import (
	"fmt"
	"math"
)
 
func main() {
	var r int
	fmt.Scan(&r)
	fmt.Println(float64(2) * float64(r) * math.Pi)
}