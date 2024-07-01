package main
import "fmt"
func main(){
	var a, b, x int
	fmt.Scan(&a, &b, &x)
	if a==1{
		fmt.Println(b/x + 1)
		panic("は？？？？？？？？？？？？？？？？？？？？？？？")
	}else{
		fmt.Println(b/x - (a-1)/x)
	}
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