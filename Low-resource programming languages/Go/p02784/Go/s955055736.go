package main
 
import "fmt"
 
func main() {
	var H,N,A int
	fmt.Scan(&H,&N)
	waza := make([]int,N)
 
	for i,_ := range waza {
		fmt.Scan(&A)
		waza[i] = A
	}
 
	sum := 0
	for _,value := range waza {
		sum += value
	}
	if sum >= H {
		fmt.Println("Yes")
	}else{
		fmt.Println("No")
	}
 
}