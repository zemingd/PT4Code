package main

import (
	"bufio"
	"fmt"
	"os"

)

func main(){
	reader := bufio.NewReader(os.Stdin)
	writer := bufio.NewWriter(os.Stdout)
	defer writer.Flush()
  var n int64;
  fmt.Scan(&n);
  var m int64;
  fmt.Scan(&m)
  nums:=make([]int64,m)

  for i:=0;i<int(m);i++{
			if i == int(m-1) {
				fmt.Fscanf(reader, "%d\n", &nums[i])
			} else {
				fmt.Fscanf(reader, "%d", &nums[i])
			}		
		}
  sum:=int64(0)
  for i:=range nums{
  	sum+=nums[i]
  }
  if(sum<=n){
  fmt.Println(n-sum)
  }else{
	  fmt.Println(-1)
  }
}