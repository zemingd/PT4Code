package main
import(
	. "fmt"
)
func four(N int)int{

	N-=4
	if N==0{
		Println("Yes")
		return 1
	}else if N<=0{
		return 0
	}
	Ans1:=four(N)
	if Ans1==1{
		return 1
	}
	Ans1=seven(N)
	if Ans1==1 {
		return 1
	}
	return 0

}
func seven(N int)int{
	N-=7
	if N==0{
		Println("Yes")
		return 1
	}else if N<=0{
		return 0
	}
	Ans1:=four(N)
	if Ans1==1{
		return 1
	}
	Ans1=seven(N)
	if Ans1==1 {
		return 1
	}
	return 0
}


func main(){
	N:=0
	Ans1:=0
	Scanf("%d",&N)
	Ans1=four(N)
	if Ans1==0{
		Ans1=seven(N)
	}
	if Ans1==0{
		Println("No")
	}
}