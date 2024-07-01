package main
import "fmt"
func main(){
	var a, b, x int
	fmt.Scan(&a, &b, &x)
	fmt.Println(b/x - max(0, a-1)/x)
}

func min(a, b int) int {
	if a<b{
		return a
	}
	return b
}

func max(a, b int) int {
	if a<b{
		return b
	}
	return a
}