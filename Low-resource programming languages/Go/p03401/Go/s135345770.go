// 公式の解説は意味不明だがこれがわかりやすかった https://qiita.com/hkrutknouch/items/29568f18163d5d39ac10

package main
import "fmt"
func main(){
	var N int
	fmt.Scan(&N)
	A := make([]int, N+2)
	A[0], A[N+1] = 0, 0
	for i:=0; i<N; i++{
		fmt.Scan(&A[i+1])
	}
	SUM:=0
	Dif := []int{}
	for i:=1; i<N+2; i++{
		Dif = append(Dif, abs(A[i]-A[i-1]))
		SUM+=Dif[i-1]
	}
	for i:=1; i<N+1;i++{
		fmt.Println(SUM+abs(A[i+1] - A[i-1]) - abs(Dif[i-1]+Dif[i]))
	}
}

func abs(x int)int{
	if x < 0{
		x*=-1
	}
	return x
}