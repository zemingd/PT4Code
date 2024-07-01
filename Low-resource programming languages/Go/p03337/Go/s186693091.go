package main
 
import "fmt"
 
const debug = true
 
func main() {
	var A, B int
	fmt.Scan(&A, &B)
 
  fmt.Println(max(A+B, A-B,A*B))
	return
 
}
 
func max(nums ...int) int {
  max=0
  for i:=0;i<3;i++{
	if max < nums[i]  {
		max = nums[i]
	}
  }
	return max
}