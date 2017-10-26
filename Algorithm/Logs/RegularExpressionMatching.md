### Regular Expression Matching


https://leetcode.com/problems/regular-expression-matching/description/


标记为hard， 那么难点在什么地方？


动态规划问题！！

定义元祖：

1. [A-Za-z.]
2. [A-Za-z.][*]

元祖之间进行匹配，如果如果被检查字符串与元祖匹配则继续往下查找

尾部匹配的特例

aab, c\*a\*b

站位算法，从一个正则表达式中还原出原来的字符串。如果还原成功则认为是匹配，如果还原失败则认为不成功。

这种算法怎么处理 尾部匹配的特例？

子问题


ab .\*b\*

还原算法 否掉！！ 


使用 预期算法。 next将会是什么，有穷自动机

