package main
import (
	"fmt"
	"math"
)
var v [][]float64

func factorial(n int)int {
	ret := 1
	for i :=2;i<=n;i++{
		ret *=i
	}
	return ret

}
func calc(nums []int)float64 {
	ret := 0.0
	n := len(nums)
	for i:=1; i<n; i++{
		ret += v[nums[i]][nums[i-1]]
	}
	return ret
}
func perm(nums []int) float64{
	ret := 0.0
	ret += calc(nums)
	n := len(nums)
	p := make([]int,n+1)
	for i := 0; i<=n; i++{
		p[i]=i
	}
	for i :=1; i<n;{
		p[i]--
		j := 0
		if i%2 == 1{
			j = p[i]
		}
		nums[i],nums[j] = nums[j],nums[i]
		ret += calc(nums)
		for i=1; p[i]==0; i++{
			p[i] = i
		}
	}
	return ret
}
func main(){
	var N int
	fmt.Scanf("%d",&N)
	p := make([][]int,N,N)
	v = make([][]float64,N,N)
	l := make([]int,N,N)
	for i := range p{
		p[i] = make([]int,2,2)
		v[i] = make([]float64,N,N)
		l[i] = i
		fmt.Scanf("%d %d",&(p[i][0]),&(p[i][1]))
		for j:=0;j<i;j++ {
			v[j][i] = math.Pow(math.Pow(float64(p[i][0]-p[j][0]),2) + math.Pow(float64(p[i][1]-p[j][1]),2),0.5)
v[i][j] = v[j][i]
		}
	}
	fmt.Println(float64(perm(l))/ float64(factorial(N)))
}
