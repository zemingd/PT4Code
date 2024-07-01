package main

import "fmt"

func mergeSort(a []int) []int {
//       fmt.Println("Mergesort:",a)
        if len(a) == 1 {
                return a
        }
        n := len(a)
        left := mergeSort(a[:n/2])
        right := mergeSort(a[n/2:])
//       fmt.Println("Left;",left," Right:",right)
        var l,r int
        sorted := make([]int,n)
        for i := 0 ; i < n ; i++ {
                if len(right) == r || (len(left) > l && left[l] <= right[r]){
                        sorted[i] = left[l]
                        l++
                } else {
                        sorted[i] = right[r]
                        r++
                }
//                fmt.Println("Now sorting :",sorted)
        }
        return sorted

}


func main(){
	var n int
	fmt.Scan(&n)
	a := make([]int,n)
	for i := 0 ; i < n ; i++ {
		fmt.Scan(&a[i])
	}
	a = mergeSort(a)
	flag := true
	for i := 0 ; i < n-1 ; i++ {
		if flag && a[i] == a[i+1] {
			flag = false
		}
	}
	if flag {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
