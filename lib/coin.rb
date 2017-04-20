require "pry"
class Fixnum
  define_method(:coin) do
    coin_values = [25, 10, 5, 1]
    coin_names = {25=> "quarter", 10 => "dime", 5 => "nickel", 1 => "penny"}
    value = self
    coins = []
    until value == 0
      coin_values.each() do |coin_value|
        until value - coin_value < 0
          coins.push(coin_value)
          value -= coin_value
        end
      end
    end
    output = ""
    coin_values.each() do |coin_value|
      if coins.include?(coin_value)
        if coins.count(coin_value) > 1
          if coin_value == 1
            coin_name = "pennies, "
          else
            coin_name = coin_names.fetch(coin_value) + "s, "
          end
        else
          coin_name = coin_names.fetch(coin_value) + ", "
        end
        output = output + coins.count(coin_value).to_s + " " + coin_name
      end
    end
    output.slice!(-2, 2)
    output
  end
end
