package main
 
import "fmt"
 
func main() {
	var k, x int
	fmt.Scan(&k ,&x)
 
	if x <= 500 * k {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}