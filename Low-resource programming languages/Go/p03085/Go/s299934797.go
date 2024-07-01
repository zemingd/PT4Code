package main

import (
	"fmt"
	"sort"
)

func main() {

	var S string

	fmt.Scan(&S)

	result := SliceInt(len(S))

	for i:=0;i<len(S);i++{

		cnt:=0

		max :=0

		if i!=len(S)-1{


			for j:=i;j<len(S);j++{

				if S[j:j+1] == "A" || S[j:j+1] == "C" || S[j:j+1] == "G"||S[j:j+1] == "T"{

					cnt++

				}else{

					if cnt >= max{

					max = cnt
						
					}

				}

			}

			result[i] = max
			
		}else{

			if S[i:i+1] == "A" || S[i:i+1] == "C" || S[i:i+1] == "G"||S[i:i+1] == "T" { 


				cnt++

			}

			result[i] = cnt
		}

	}


	sort.Sort(sort.IntSlice(result))

	fmt.Println(result[len(result)-1])

}

//SliceInt 引数サイズのSliceを返す
func SliceInt(a int) []int{

	 IntSample :=  make([]int, a)

	 return IntSample
	
}