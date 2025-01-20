# Elixir List Modification During Enum.each
This example demonstrates a common error when attempting to modify a list while iterating over it using `Enum.each`. In Elixir, lists are immutable, so directly modifying `list` inside the `Enum.each` function doesn't change the original list.  The solution involves using a different approach like `Enum.filter` or creating a new list.

## Bug Report:
The provided code intends to remove the element `3` from the list while iterating, but it fails to do so. The `List.delete` function creates a new list without modifying the original, which is then ignored by `Enum.each`.