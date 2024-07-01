package main
import (
	"fmt"
	"os"
	"bufio"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)

func Input_Str() string {
	stdin.Scan()
	stringInput := stdin.Text()
	out := strings.TrimSpace(stringInput)
	return out
}

func main(){
	stdin.Split(bufio.ScanWords)
	s := Input_Str()
	count_W:=0
	count_B:=0

	for i:=0;i<len(s);i++{
		if i%2==0{
			if s[i]=='0'{
				count_W++
			}else{
				count_B++
			}
		}else{
			if s[i]=='1'{
				count_W++
			}else{
				count_B++
			}
		}
	}
	
	if count_W < count_B{
		fmt.Println(count_W)
	}else{
		fmt.Println(count_B)
	}
}

