#Project: Stock Picker - Ruby Course

## Assignment

Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

```
> stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12

```

## My Solution

* Declared the best_day_buy, best_day_sell & profit variables and assigned them 0 value;
* Implemented each_index method to iterate through the array to find the best day to buy;
* Iterate through the array starting from the next day to find the best day to sell;
* Calculate the profit if we buy on buy_day and sell on sell_day;
* Update variables the best_day_buy, best_day_sell, and max_profit if the current profit is greater;
