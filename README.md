# MPP-Ruby
University tasks in the discipline of Applied programming languages

# TASK 1

Make a small script game "rock paper scissors".
We pass the subject as a command line argument to the input
The output is the result
EX:
input --> ruby game.rb Stone Paper
output --> You lose

Зробити невелику скрипт гру "камні ножиці папір".
На вхід передаємо предмет у вигляді аргументу командного рядка
На виході результат
EX:
input --> ruby game.rb Stone Paper
output --> You lose

# TASK 2

Make a small script.
At the input, we pass the mathematical expression in the form we are used to
On the way out, we see him at RPN.
EX:
input --> 2 + 1 × 4
output --> 2 1 4 * +

Зробити невеликий скрипт
На вхід передаємо математичний вираз у звичному нам вигляді
На виході бачимо його у RPN
EX:
input --> 2 + 1 × 4
output --> 2 1 4 * +

# TASK 3

Implement the design pattern - Observer


Реалізувати паттерн проектування - Observer

# TASK 4

Write a program that accepts "cake with raisins" as input

cake =
    ........
    ..o.....
    ...o....
    ........
// o is a raisin

We need to evenly cut the cake into n small rectangular pieces so that each small cake contains 1 raisin. n is not an argument, this is the number of slices inside the cake
cake =
    ........
    ..o.....
    ...o....
    ........

The result is such an array
    [
       ........
       ..o.....
    ,
       ...o....
       ........
    ]

The number of highlights is always greater than 1 and less than 10.
If there are several solutions, choose the one with the largest width of the first element of the array.
Gradually cut into n parts, which means the same area. But their form can be different.
Each piece of cake should be rectangular.
Examples

cake =
    .o......
    ......o.
    ....o...
    ..o.....

In this example, we can find three solutions:
solution 1 (horizontal cut):
    [
      .o...... //piece 1
    ,
      ......o. //piece 2
    ,
      ....o... //piece 3
    ,
      ..o..... //Part 4
    ]

solution 2 (vertical cut):
    [
      .o // piece 1
      ..
      ..
      ..
    ,
      .. //pc. 2
      ..
      ..
      o.
    ,
      .. //pc. 3
      ..
      o.
      ..
    ,
      .. //pc. 4
      o.
      ..
      ..
    ]

solution 3
    [
      .o.. //pc. 1
      ....
    ,
      .... // pcs. 2
      ..o.
    ,
      .... // pcs. 3
      ..o.
    ,
      o... //pcs. 4
      ....
    ]
we need to choose solution 1 as the result

Example of different forms:
cake =
    .o.o....
    ........
    ....o...
    ........
    .....o..
    ........

the result should be:
    [
      .o // pieces 1
      ..
      ..
      ..
      ..
      ..
    ,
      .o... //pcs. 2
      ......
    ,
      ..o... //pc. 3
      ......
    ,
      ...o. // pcs. 4
      ......
    ]

Although they have different shapes, they have the same area (2 x 6 = 12 and 6 x 2 = 12).


Написати програму яка приймає на вхід "пиріг з родзинками"

cake =
   ........
   ..o.....
   ...o....
   ........
// o - це родзинки
Нам потрібно рівно розрізати пиріг на n маленьких прямокутних шматочків так, щоб у кожному маленькому пирізі була 1 изюминка. n не є аргументом, ця кількість зрізів усередині торта
cake =
   ........
   ..o.....
   ...o....
   ........
 
Результат ось такий масив
   [
      ........
      ..o.....
   ,
      ...o....
      ........
   ]

Кількість изюминок завжди більше 1 та менше 10.
Якщо рішень кілька, виберіть те, що має найбільшу ширину першого елемента масиву.
Поступово розрізати на n частин, що означає однакову площу. Але їхня форма може бути різною.
Кожен шматок торта має бути прямокутним.

Examples
cake =
   .о......
   ......о.
   ....о...
   ..о.....

У цьому прикладі ми можемо знайти три рішення:
solution 1 (horizontal cut):
   [
     .о...... //шматок 1
   ,
     ......о. //шматок 2
   ,
     ....о... //шматок 3
   ,
     ..о..... //Частина 4
   ]

solution 2 (vertical cut):
   [
     .о // шматок 1
     ..
     ..
     ..
   ,
     .. //шт. 2
     ..
     ..
     о.
   ,
     .. //шт. 3
     ..
     о.
     ..
   ,
     .. //шт. 4
     о.
     ..
     ..
   ]

solution 3
   [
     .о.. //шт. 1
     ....
   ,
     .... // Шт. 2
     ..о.
   ,
     .... // Шт. 3
     ..о.
   ,
     о... //шт. 4
     ....
   ]
нам потрібно вибрати рішення 1 як результат

Приклад різних форм:
cake =
   .о.о....
   ........
   ....о...
   ........
   .....о..
   ........

результат має бути:
   [
     .o // штук 1
     ..
     ..
     ..
     ..
     ..
   ,
     .о.... //шт. 2
     ......
   ,
     ..о... //шт. 3
     ......
   ,
     ...о. //шт. 4
     ......
   ]
Хоча вони мають різну форму, вони мають однакову площу(2 х 6 = 12 і 6 х 2 = 12).
