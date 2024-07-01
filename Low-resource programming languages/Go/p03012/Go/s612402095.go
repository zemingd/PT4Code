package main;
import "fmt";
import "math";

func main()  {
	var N,S1,S2,ans int;
	fmt.Scan(&N);
	
	var W = make([]int,N)
	for i:=0;i<N;i++{fmt.Scan(&W[i]);}

	ans = 99999999
	for i:=0;i<N;i++{
		for j:=0;j<i;j++{S1 += W[j]}
		for k:=i;k<N;k++{S2 += W[k]}
		ans = int(math.Min(math.Abs(float64(S1-S2)),float64(ans)))

		S1 = 0;S2 = 0;
	}
	fmt.Println(ans);	
}