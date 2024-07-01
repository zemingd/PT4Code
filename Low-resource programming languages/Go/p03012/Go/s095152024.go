package main;
import "fmt";
import "math";

func main()  {
	var N int
	var ans,S1,S2 float64;
	fmt.Scan(&N);
	
	var W = make([]float64,N)
	for i:=0;i<N;i++{fmt.Scan(&W[i]);}

	ans = math.Inf(0);
	for i:=0;i<N;i++{
		for j:=0;j<i;j++{S1 += W[j]}
		for k:=i;k<N;k++{S2 += W[k]}
		ans = math.Min(math.Abs(S1-S2),ans)

		S1 = 0;S2 = 0;
	}
	fmt.Println(ans);	
}