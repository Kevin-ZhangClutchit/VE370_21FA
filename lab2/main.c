#include <stdio.h>
#define POS_CNT 1
#define NEG_CNT -1
#define ZERO_CNT 0
int isPos(int x) {
    if (x > 0) return 1;
    else return 0;
}

int isNeg(int x) {
    if (x < 0) return 1;
    else return 0;
}

int isZero(int x) {
    if (x == 0) return 1;
    else return 0;
}
int countArray(int A[], int numElements, int cntType) {
    int cnt;
    int pos_cnt=0,neg_cnt=0,zero_cnt=0;
    for (int i = 0; i < numElements; ++i) {
        if (isPos(A[i])){
            pos_cnt++;
            continue;
        }
        if (isNeg(A[i])){
            neg_cnt++;
            continue;
        }
        if (isZero(A[i])){
            zero_cnt++;
        }
    }
    if (cntType==1){cnt=pos_cnt;}
    else{cnt=(cntType==-1?neg_cnt:zero_cnt);}
    return cnt;
}


int sumArray(int arr[],int size) {
    int cnt=0;
    for (int i = 0; i < size; ++i) {
        cnt+=arr[i];
    }
    return cnt;
}
int main() {
    int size = 40;
    int PosCnt=0, NegCnt=0, ZeroCnt=0, Sum;
    int testArray[40] = {47, 40, 4, 48, 0, 0, 21, 26,0, -18,26, 0, 0, -46,27, 32,-45, -19,0, 41,0, 14,-21, 28,-37, 0,38, 21,0, -18,0, 0, 0, -12,18, -39,-29, 26,0, -1 };
    PosCnt = countArray(testArray, size, POS_CNT);
    NegCnt = countArray(testArray,size,NEG_CNT);
    ZeroCnt = countArray(testArray,size,ZERO_CNT);
    Sum = sumArray(testArray,size);
    printf("%d,%d,%d,%d",PosCnt,NegCnt,ZeroCnt,Sum);
}

