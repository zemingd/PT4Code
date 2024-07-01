package main

import (
    "bufio"
    "fmt"
    "os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
    var s string
    ans, tmp := 0, 0
    if sc.Scan() {
        s = sc.Text()
    }
  	for i:=0; i<3; i++ {
    	if s[i] == 'R' {
        	tmp++;
        } else {
        	if ans < tmp {
            	ans = tmp
            }
          	tmp = 0
        }
    }
  	if ans < tmp {
  		ans = tmp
    }
  	fmt.Println(ans)
}