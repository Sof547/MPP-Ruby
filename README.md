# MPP-Ruby
University tasks in the discipline of Applied programming languages.  

# TASK 1

Make a small script game "rock paper scissors".  
We pass the subject as a command line argument to the input.  
The output is the result.  
EX:  
input --> `ruby game.rb Stone Paper`  
output --> `You lose`  

---

Зробити невелику скрипт гру "камні ножиці папір".  
На вхід передаємо предмет у вигляді аргументу командного рядка.  
На виході результат.  
EX:  
input --> `ruby game.rb Stone Paper`  
output --> `You lose`  

# TASK 2

Make a small script.  
At the input, we pass the mathematical expression in the form we are used to.  
On the way out, we see him at RPN.  
EX:  
input --> `2 + 1 × 4`  
output --> `2 1 4 * +`  

---

Зробити невеликий скрипт.  
На вхід передаємо математичний вираз у звичному нам вигляді.  
На виході бачимо його у RPN.  
EX:  
input --> `2 + 1 × 4`  
output --> `2 1 4 * +`  

# TASK 3

Implement the design pattern - **Observer**.  

---

Реалізувати паттерн проектування - **Observer**.  

# TASK 4

Write a program that accepts "pie with raisins" as input.  
*o is a raisin.*  
  
cake = 
[  
    `........`  
    `..o.....`  
    `...o....`  
    `........`  
]  
  
We need to evenly cut the cake into n small rectangular pieces so that each small cake contains 1 raisin. n is not an argument, this is the number of slices inside the cake.  
The result is such an array  
    [  
       `........`  
       `..o.....`  
    ,  
       `...o....`  
       `........`  
    ]  
     
The number of highlights is always greater than 1 and less than 10.  
If there are several solutions, choose the one with the largest width of the first element of the array.  
Gradually cut into n parts, which means the same area. But their form can be different.  
Each piece of cake should be rectangular.  
    
Examples  
cake =  
[  
    `.o......`    
    `......o.`  
    `....o...`   
    `..o.....`  
]  
  
In this example, we can find three solutions:  
solution 1 (horizontal cut):  
    [  
      `.o......` *// piece 1*  
    ,  
      `......o.` *// piece 2*  
    ,  
      `....o...` *// piece 3*  
    ,  
      `..o.....` *// piece 4*  
    ]  
  
solution 2 (vertical cut):  
    [  
      `.o` *// pc. 1*  
      `..`  
      `..`  
      `..`  
    ,  
      `..` *// pc. 2*  
      `..`  
      `..`  
      `o.`  
    ,  
      `..` *// pc. 3*  
      `..`  
      `o.`  
      `..`  
    ,  
      `..` *// pc. 4*  
      `o.`  
      `..`  
      `..`  
    ]  
   
solution 3  
    [  
      `.o..` *// pcs. 1*  
      `....`  
    ,  
      `....` *// pcs. 2*  
      `..o.`  
    ,  
      `....` *// pcs. 3*  
      `..o.`  
    ,  
      `o...` *//pcs. 4*  
      `....`  
    ]  
we need to choose solution 1 as the result.  
   
Example of different forms:  
cake =  
[  
    `.o.o....`  
    `........`  
    `....o...`  
    `........`  
    `.....o..`   
    `........`  
]  
  
the result should be:  
    [  
      `.o` // *pcs. 1*  
      `..`  
      `..`  
      `..`  
      `..`  
      `..`  
    ,  
      `.o....` // *pcs. 2*  
      `......`  
    ,  
      `..o...` // *pcs. 3*  
      `......`  
    ,  
      `...o..` // *pcs. 4*  
      `......`  
    ]  
     
Although they have different shapes, they have the same area (2 x 6 = 12 and 6 x 2 = 12).  

# TASK 5

We need to write a program that converts a Roman numeral into an integer and vice versa.  

Modern Roman numerals are written by expressing each digit individually, starting with the leftmost digit and omitting any digit with a value of zero. 1990 is denoted by Roman numerals: 1000=M, 900=CM, 90=XC; as a result of MCMXC. 2008 is written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman character in descending order: MDCLXVI.  

Input range: 1 <= n < 4000    
4 should be represented as IV.  

---

Треба написати програму, яка перетворює римську цифру в ціле число та навпаки.  

Сучасні римські цифри записуються, виражаючи кожну цифру окремо, починаючи з крайньої лівої цифри та пропускаючи будь-яку цифру зі значенням нуль. Римськими цифрами 1990 позначається: 1000=M, 900=CM, 90=XC; в результаті MCMXC. 2008 записується як 2000=MM, 8=VIII; або MMVIII. 1666 використовує кожен римський символ у порядку спадання: MDCLXVI.  

Діапазон введення: 1 <= n < 4000  
4 має бути представлено як IV.  

# TASK 6

Implement a method that returns true when it specifies a string argument with an IPv4 address - some numbers (0-255), separated by dots.  
It is your responsibility to accept addresses in the canonical representation, without leading zeros, spaces, etc.  

---

Реалізуйте метод, який повертатиме true, якщо заданий аргумент строки є IPv4-адресою - чотири числа (0-255), розділені крапками.  
Він повинен приймати лише адреси в канонічному представленні, тобто без ведучих нулів, пропусків тощо.  

# KR
  
3. Write a program that calculates the factorial of a number entered by the user.  
4. Write a program that checks whether the entered number is prime.  
  
---
  
3. Напишіть програму, яка обчислює факторіал числа, введеного користувачем.  
4. Напишіть програму, яка перевіряє, чи є введене число простим.  
  
# TASK 7

The Monte Carlo method for evaluating numerical integrals and probability problems.  

---

Метод Монте-Карло для обчислення числових інтегралів і ймовірнісних задач.
