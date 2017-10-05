prices_in_cents = %{bread: 10, milk: 200, cake: 1500}
cents_spent = 10 * prices_in_cents[:bread] +
               3 * prices_in_cents[:milk]  +
               1 * prices_in_cents[:cake]
IO.puts "Sarah spent #{cents_spent / 100} dollars"
