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
	reverse:=false
	count:=0
	if len(s) <= 1{
		fmt.Println(0)
	}else{
		for i:=1;i<len(s);i++{
			if s[i-1] == s[i] && !reverse{
				//前の文字と一致して、反転してないなら反転処理を行う
				count++
				reverse = true
			}else if s[i-1] != s[i] && reverse{
				//前の文字と不一致で、反転しているなら次の文字も反転する
				count++
				reverse = true
			}else{
				//前の文字と一致でreverseなら並んでいない
				//前の文字と不一致でreverse=falseなら並んでいない
				reverse = false
			}
		}
		fmt.Println(count)
	}
}