```elixir
list = [1, 2, 3, 4, 5]

# Use Enum.filter to create a new list without the element 3
new_list = Enum.filter(list, fn x -> x != 3 end)

IO.puts(Enum.to_list(new_list))  # Output: [1, 2, 4, 5]

#Alternative using Enum.reduce
new_list2 = Enum.reduce(list, [], fn x, acc ->
  if x != 3, do: [x | acc], else: acc
end)

IO.puts(Enum.reverse(new_list2)) # Output: [1, 2, 4, 5]
```