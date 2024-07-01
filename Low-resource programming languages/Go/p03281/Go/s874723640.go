package main
import "fmt"

func main(){
	var N int;
	var ans, cnt int;
	fmt.Scan(&N);	
	
	for i := 1;i <= N;i=i+2 {
		for j := 1;j <= i;j++ {
			if i % j == 0 { cnt++; }
		}
		if cnt == 8{ ans++ }
		cnt = 0;
	}

	fmt.Printf("%d\n",ans);
}