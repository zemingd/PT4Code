package main

import ("fmt")

func main(){
	var N, M, count int
	var K [30]int
	var A [100][100]int
	var ans [100]int

	fmt.Scan(&N, &M)

	for i := 0 ; i < 100 ; i++{
		ans[i] = 0
	}
	for i := 0 ; i < N ; i++{
		fmt.Scan(&K[i])

		for j := 0 ; j < K[i] ; j++ {
			fmt.Scan(&A[i][j])
		}	
	}


	for i := 0 ; i < N ; i++ {
		for j := 0 ; j < K[i] ; j++ {
			ans[A[i][j]]++
		}
	}
	count = 0
	for i := 1 ; i <= 30 ; i++ {
	//	fmt.Print(ans[i])
			if ans[i] == N {
			//	fmt.Printf("%d ", i)
				count++;
		}
	}
	fmt.Println()
	fmt.Println(count)

}