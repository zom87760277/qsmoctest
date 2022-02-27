import Debug"mo:base/Debug";
import Array "mo:base/Array";
import Int "mo:base/Int";



func quicksort(
            tl : [var Int],
            l : Int,
            r : Int
        ) {
            if (l < r) {
                var i = l;
                var j = r;
                var key  = tl[Int.abs(l)];
                while (i < j) {
                    while(i < j  and tl[Int.abs(j)] >= key){
                        j -= 1;
                    };
                    if(i < j){
                        tl[Int.abs(i)] := tl[Int.abs(j)];
                        i +=1;
                    };
                    while(i < j and tl[Int.abs(i)] < key){
                        i += 1;
                    };
                    if(i < j){
                        tl[Int.abs(j)] := tl[Int.abs(i)];
                        j -= 1;
                    };
                };
            tl[Int.abs(i)] := key;
            quicksort(tl,l,i-1);
            quicksort(tl,i+1,r);
            };
    };

let ss: [Int]= [4, 2, 6, 1, 5,5554,323,62,554,0,1,33];
let n = ss.size();
let result:[var Int] = Array.thaw(ss);
quicksort(result, 0, n - 1);
Debug.print(debug_show(result));

