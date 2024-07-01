package main

import(
	"fmt"
	"math"
)

func main(){
	var N, M, Y int
	var ans = 1 
	fmt.Scanf("%v%v",&N, &M)
	for X := 1; X*X <= M; X++ {
		if M % X != 0 {continue}
		
		Y = M / X
		
		if X * N <= M {
			ans = int(math.Max(float64(ans),float64(X)))
		}
		if Y * N <= M {
			ans = int(math.Max(float64(ans),float64(Y)))
		}
	}
	fmt.Printf("%v\n",ans)
}