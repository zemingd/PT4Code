package main

import "fmt"
import "math"

func main(){
	var A, B, H, M float64
	var ans float64;
	var kakudo float64;

	fmt.Scan(&A, &B, &H, &M);

	if H*30+M*0.5 - M*6 < 180 {
		kakudo = H*30+M*0.5 - M*6;
	}else {
		kakudo = 360 -(H*30+M*0.5 - M*6);
	}
	//fmt.Println(kakudo);
	kakudo = kakudo / 180 * math.Pi;
	kakudo = math.Cos(kakudo);
//	fmt.Println(kakudo);
	ans = (A*A) + (B*B) - (2*A*B * kakudo);
	fmt.Println(math.Sqrt(ans));
}