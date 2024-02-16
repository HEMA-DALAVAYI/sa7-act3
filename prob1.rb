'''
Problem 1: CSV Parser

Task: Write a Ruby script that reads a CSV file named data.csv,
where the first row is the header containing column names.
Each subsequent row contains data corresponding to these column names.
Convert this CSV file into an array of hashes, where each hash
represents a row of data with keys as column names and values as row
values. Assume the CSV file does not contain any special characters
like commas within data fields.
Example data.csv Content:
Name,Age,City
Alice,30,New York
Bob,25,Los Angeles
Expected Output (printed as a Ruby object):
[
  { "Name" => "Alice", "Age" => "30", "City" => "New York" },
  { "Name" => "Bob", "Age" => "25", "City" => "Los Angeles" }
]
'''

require 'csv'
data = CSV.read('data.csv', headers: true)
objects = data.map { |row| row.to_h }
print objects
