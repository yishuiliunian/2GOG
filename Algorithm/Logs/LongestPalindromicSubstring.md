集中常见的情况：

1. a
2. aa
3. aba
4. abcba
5. abccba

后面两种是从2和3衍生出来，所以首先需要判断2和3. 

特征为：回文

<font color=red>怎样拟合特征：使用两个指针指向回文头尾。然后通过移动头尾，并比较来判断是否是回文。</font> 拟合否掉

拆解成两个字问题：

1. 寻找最小回文串
2. 从最小回文串向两侧出发，寻找最长回文


使用swift编码，解决该问题。

string的index是个很奇怪的东西，还没有吃透他的模型，需要进一步了解。

时间复杂度 m+n／2 


