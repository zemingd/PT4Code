package main
import (
	"fmt"
	"math"
)
func main() {
	var k int
	series := 7
	fmt.Scan(&k)
	if k % 2 == 0{
		fmt.Println(-1)
		return}
	for j:=1;;j++{
		if series >= k && series % k == 0{
			fmt.Println(j)
			return}
		series += int(math.Pow(10.0, float64(j))) * 7
	}}