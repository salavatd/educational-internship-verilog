# Задание 6. Двоично-десятичный декодер
Перевод из двоично-десятичного кода в двоичный.  
Входные данные: два 4-х разрядных числа: первое - десятки, второе - единицы.  
Выходные данные: 7-ми разрядное число.  
Если на вход подана запрещенная комбинация выводить ошибку.

<details>
  <summary>Результат тестов</summary>

```
# Test valid data
# Input: tens_i = 0, units_i = 0. Output: number_o =  0, error_o = 0. Result: OK.
# Input: tens_i = 0, units_i = 1. Output: number_o =  1, error_o = 0. Result: OK.
# Input: tens_i = 0, units_i = 2. Output: number_o =  2, error_o = 0. Result: OK.
# Input: tens_i = 0, units_i = 3. Output: number_o =  3, error_o = 0. Result: OK.
# Input: tens_i = 0, units_i = 4. Output: number_o =  4, error_o = 0. Result: OK.
# Input: tens_i = 0, units_i = 5. Output: number_o =  5, error_o = 0. Result: OK.
# Input: tens_i = 0, units_i = 6. Output: number_o =  6, error_o = 0. Result: OK.
# Input: tens_i = 0, units_i = 7. Output: number_o =  7, error_o = 0. Result: OK.
# Input: tens_i = 0, units_i = 8. Output: number_o =  8, error_o = 0. Result: OK.
# Input: tens_i = 0, units_i = 9. Output: number_o =  9, error_o = 0. Result: OK.
# Input: tens_i = 1, units_i = 0. Output: number_o = 10, error_o = 0. Result: OK.
# Input: tens_i = 1, units_i = 1. Output: number_o = 11, error_o = 0. Result: OK.
# Input: tens_i = 1, units_i = 2. Output: number_o = 12, error_o = 0. Result: OK.
# Input: tens_i = 1, units_i = 3. Output: number_o = 13, error_o = 0. Result: OK.
# Input: tens_i = 1, units_i = 4. Output: number_o = 14, error_o = 0. Result: OK.
# Input: tens_i = 1, units_i = 5. Output: number_o = 15, error_o = 0. Result: OK.
# Input: tens_i = 1, units_i = 6. Output: number_o = 16, error_o = 0. Result: OK.
# Input: tens_i = 1, units_i = 7. Output: number_o = 17, error_o = 0. Result: OK.
# Input: tens_i = 1, units_i = 8. Output: number_o = 18, error_o = 0. Result: OK.
# Input: tens_i = 1, units_i = 9. Output: number_o = 19, error_o = 0. Result: OK.
# Input: tens_i = 2, units_i = 0. Output: number_o = 20, error_o = 0. Result: OK.
# Input: tens_i = 2, units_i = 1. Output: number_o = 21, error_o = 0. Result: OK.
# Input: tens_i = 2, units_i = 2. Output: number_o = 22, error_o = 0. Result: OK.
# Input: tens_i = 2, units_i = 3. Output: number_o = 23, error_o = 0. Result: OK.
# Input: tens_i = 2, units_i = 4. Output: number_o = 24, error_o = 0. Result: OK.
# Input: tens_i = 2, units_i = 5. Output: number_o = 25, error_o = 0. Result: OK.
# Input: tens_i = 2, units_i = 6. Output: number_o = 26, error_o = 0. Result: OK.
# Input: tens_i = 2, units_i = 7. Output: number_o = 27, error_o = 0. Result: OK.
# Input: tens_i = 2, units_i = 8. Output: number_o = 28, error_o = 0. Result: OK.
# Input: tens_i = 2, units_i = 9. Output: number_o = 29, error_o = 0. Result: OK.
# Input: tens_i = 3, units_i = 0. Output: number_o = 30, error_o = 0. Result: OK.
# Input: tens_i = 3, units_i = 1. Output: number_o = 31, error_o = 0. Result: OK.
# Input: tens_i = 3, units_i = 2. Output: number_o = 32, error_o = 0. Result: OK.
# Input: tens_i = 3, units_i = 3. Output: number_o = 33, error_o = 0. Result: OK.
# Input: tens_i = 3, units_i = 4. Output: number_o = 34, error_o = 0. Result: OK.
# Input: tens_i = 3, units_i = 5. Output: number_o = 35, error_o = 0. Result: OK.
# Input: tens_i = 3, units_i = 6. Output: number_o = 36, error_o = 0. Result: OK.
# Input: tens_i = 3, units_i = 7. Output: number_o = 37, error_o = 0. Result: OK.
# Input: tens_i = 3, units_i = 8. Output: number_o = 38, error_o = 0. Result: OK.
# Input: tens_i = 3, units_i = 9. Output: number_o = 39, error_o = 0. Result: OK.
# Input: tens_i = 4, units_i = 0. Output: number_o = 40, error_o = 0. Result: OK.
# Input: tens_i = 4, units_i = 1. Output: number_o = 41, error_o = 0. Result: OK.
# Input: tens_i = 4, units_i = 2. Output: number_o = 42, error_o = 0. Result: OK.
# Input: tens_i = 4, units_i = 3. Output: number_o = 43, error_o = 0. Result: OK.
# Input: tens_i = 4, units_i = 4. Output: number_o = 44, error_o = 0. Result: OK.
# Input: tens_i = 4, units_i = 5. Output: number_o = 45, error_o = 0. Result: OK.
# Input: tens_i = 4, units_i = 6. Output: number_o = 46, error_o = 0. Result: OK.
# Input: tens_i = 4, units_i = 7. Output: number_o = 47, error_o = 0. Result: OK.
# Input: tens_i = 4, units_i = 8. Output: number_o = 48, error_o = 0. Result: OK.
# Input: tens_i = 4, units_i = 9. Output: number_o = 49, error_o = 0. Result: OK.
# Input: tens_i = 5, units_i = 0. Output: number_o = 50, error_o = 0. Result: OK.
# Input: tens_i = 5, units_i = 1. Output: number_o = 51, error_o = 0. Result: OK.
# Input: tens_i = 5, units_i = 2. Output: number_o = 52, error_o = 0. Result: OK.
# Input: tens_i = 5, units_i = 3. Output: number_o = 53, error_o = 0. Result: OK.
# Input: tens_i = 5, units_i = 4. Output: number_o = 54, error_o = 0. Result: OK.
# Input: tens_i = 5, units_i = 5. Output: number_o = 55, error_o = 0. Result: OK.
# Input: tens_i = 5, units_i = 6. Output: number_o = 56, error_o = 0. Result: OK.
# Input: tens_i = 5, units_i = 7. Output: number_o = 57, error_o = 0. Result: OK.
# Input: tens_i = 5, units_i = 8. Output: number_o = 58, error_o = 0. Result: OK.
# Input: tens_i = 5, units_i = 9. Output: number_o = 59, error_o = 0. Result: OK.
# Input: tens_i = 6, units_i = 0. Output: number_o = 60, error_o = 0. Result: OK.
# Input: tens_i = 6, units_i = 1. Output: number_o = 61, error_o = 0. Result: OK.
# Input: tens_i = 6, units_i = 2. Output: number_o = 62, error_o = 0. Result: OK.
# Input: tens_i = 6, units_i = 3. Output: number_o = 63, error_o = 0. Result: OK.
# Input: tens_i = 6, units_i = 4. Output: number_o = 64, error_o = 0. Result: OK.
# Input: tens_i = 6, units_i = 5. Output: number_o = 65, error_o = 0. Result: OK.
# Input: tens_i = 6, units_i = 6. Output: number_o = 66, error_o = 0. Result: OK.
# Input: tens_i = 6, units_i = 7. Output: number_o = 67, error_o = 0. Result: OK.
# Input: tens_i = 6, units_i = 8. Output: number_o = 68, error_o = 0. Result: OK.
# Input: tens_i = 6, units_i = 9. Output: number_o = 69, error_o = 0. Result: OK.
# Input: tens_i = 7, units_i = 0. Output: number_o = 70, error_o = 0. Result: OK.
# Input: tens_i = 7, units_i = 1. Output: number_o = 71, error_o = 0. Result: OK.
# Input: tens_i = 7, units_i = 2. Output: number_o = 72, error_o = 0. Result: OK.
# Input: tens_i = 7, units_i = 3. Output: number_o = 73, error_o = 0. Result: OK.
# Input: tens_i = 7, units_i = 4. Output: number_o = 74, error_o = 0. Result: OK.
# Input: tens_i = 7, units_i = 5. Output: number_o = 75, error_o = 0. Result: OK.
# Input: tens_i = 7, units_i = 6. Output: number_o = 76, error_o = 0. Result: OK.
# Input: tens_i = 7, units_i = 7. Output: number_o = 77, error_o = 0. Result: OK.
# Input: tens_i = 7, units_i = 8. Output: number_o = 78, error_o = 0. Result: OK.
# Input: tens_i = 7, units_i = 9. Output: number_o = 79, error_o = 0. Result: OK.
# Input: tens_i = 8, units_i = 0. Output: number_o = 80, error_o = 0. Result: OK.
# Input: tens_i = 8, units_i = 1. Output: number_o = 81, error_o = 0. Result: OK.
# Input: tens_i = 8, units_i = 2. Output: number_o = 82, error_o = 0. Result: OK.
# Input: tens_i = 8, units_i = 3. Output: number_o = 83, error_o = 0. Result: OK.
# Input: tens_i = 8, units_i = 4. Output: number_o = 84, error_o = 0. Result: OK.
# Input: tens_i = 8, units_i = 5. Output: number_o = 85, error_o = 0. Result: OK.
# Input: tens_i = 8, units_i = 6. Output: number_o = 86, error_o = 0. Result: OK.
# Input: tens_i = 8, units_i = 7. Output: number_o = 87, error_o = 0. Result: OK.
# Input: tens_i = 8, units_i = 8. Output: number_o = 88, error_o = 0. Result: OK.
# Input: tens_i = 8, units_i = 9. Output: number_o = 89, error_o = 0. Result: OK.
# Input: tens_i = 9, units_i = 0. Output: number_o = 90, error_o = 0. Result: OK.
# Input: tens_i = 9, units_i = 1. Output: number_o = 91, error_o = 0. Result: OK.
# Input: tens_i = 9, units_i = 2. Output: number_o = 92, error_o = 0. Result: OK.
# Input: tens_i = 9, units_i = 3. Output: number_o = 93, error_o = 0. Result: OK.
# Input: tens_i = 9, units_i = 4. Output: number_o = 94, error_o = 0. Result: OK.
# Input: tens_i = 9, units_i = 5. Output: number_o = 95, error_o = 0. Result: OK.
# Input: tens_i = 9, units_i = 6. Output: number_o = 96, error_o = 0. Result: OK.
# Input: tens_i = 9, units_i = 7. Output: number_o = 97, error_o = 0. Result: OK.
# Input: tens_i = 9, units_i = 8. Output: number_o = 98, error_o = 0. Result: OK.
# Input: tens_i = 9, units_i = 9. Output: number_o = 99, error_o = 0. Result: OK.
# Test wrong data
# Input: tens_i = a, units_i = 1. Output: number_o =  z, error_o = 1. Result: OK.
# Input: tens_i = b, units_i = 1. Output: number_o =  z, error_o = 1. Result: OK.
# Input: tens_i = c, units_i = 1. Output: number_o =  z, error_o = 1. Result: OK.
# Input: tens_i = d, units_i = 1. Output: number_o =  z, error_o = 1. Result: OK.
# Input: tens_i = e, units_i = 1. Output: number_o =  z, error_o = 1. Result: OK.
# Input: tens_i = f, units_i = 1. Output: number_o =  z, error_o = 1. Result: OK.
# Input: tens_i = 1, units_i = a. Output: number_o =  z, error_o = 1. Result: OK.
# Input: tens_i = 1, units_i = b. Output: number_o =  z, error_o = 1. Result: OK.
# Input: tens_i = 1, units_i = c. Output: number_o =  z, error_o = 1. Result: OK.
# Input: tens_i = 1, units_i = d. Output: number_o =  z, error_o = 1. Result: OK.
# Input: tens_i = 1, units_i = e. Output: number_o =  z, error_o = 1. Result: OK.
# Input: tens_i = 1, units_i = f. Output: number_o =  z, error_o = 1. Result: OK.
```
</details>
