package main

import "fmt"
//import "strings"

func main(){
	var N int;
	var S string;
	fmt.Scan(&N, &S);

	//fmt.Println(strings.Count(S, "ABC"));
	var ans int;
	for i := 0 ; i < N-3 ; i++ {
		if S[i] == 'A' && S[i+1] == 'B' && S[i+2] == 'C'{
			ans++;
		}
	}
	fmt.Println(ans);
}